#include <ap_int.h>

#define MAX_SIZE 16 // The physical grid size (16x16 PEs)

extern "C" {
void mmult(const int *a, const int *b, int *out, int size) {
    // Mapping the pointers to AXI Master interfaces
    #pragma HLS INTERFACE m_axi port=a bundle=gmem0
    #pragma HLS INTERFACE m_axi port=b bundle=gmem1
    #pragma HLS INTERFACE m_axi port=out bundle=gmem0
    #pragma HLS INTERFACE s_axilite port=return bundle=control

    // Local buffers to hold the matrices on-chip
    //THESE ALSO ARE MADE OF REGISTERS
    int localA[MAX_SIZE][MAX_SIZE];
    int localB[MAX_SIZE][MAX_SIZE];
    int localC[MAX_SIZE][MAX_SIZE];
    // BY THIS CODE THESE ARE INTIIALLY CREATED AS BRAM islands

    

    // THE SYSTOLIC ARRAY SECRET SAUCE:
    // Partitioning turns these arrays into individual registers/wires
    #pragma HLS ARRAY_PARTITION variable=localA dim=1 complete  //ROWS(Horizontal parallel buses)
    #pragma HLS ARRAY_PARTITION variable=localB dim=2 complete  //COLS(Vertical parallel buses)
    #pragma HLS ARRAY_PARTITION variable=localC dim=0 complete  //ALL(2D grid of registers)

    //NOW VITIS IGNORES THE BRAM AND GRABS 256 INDIVIDUAL FLIP FLOPS

    

    // 1. Read data from Global Memory (DDR) to Local BRAM/Registers
    for (int i = 0; i < MAX_SIZE; i++) {
        for (int j = 0; j < MAX_SIZE; j++) {
            #pragma HLS PIPELINE
            localA[i][j] = a[i * MAX_SIZE + j];
            localB[i][j] = b[i * MAX_SIZE + j];
            localC[i][j] = 0; // Clear the accumulator
        }
    }


//HLS PIPELINE - TEMPORAL PARALLELISM   
//HLS UNROLL - SPATIAL PARALLELISM 

    // 2. The Systolic Computation Logic
    systolic1: for (int k = 0; k < MAX_SIZE; k++) {
        #pragma HLS PIPELINE II=1
        systolic2: for (int i = 0; i < MAX_SIZE; i++) {
            systolic3: for (int j = 0; j < MAX_SIZE; j++) {
                #pragma HLS UNROLL
                // This builds 256 physical MAC units (16x16)
                localC[i][j] += localA[i][k] * localB[k][j];
            }
        }
    }

    // 3. Write data back to Global Memory
    for (int i = 0; i < MAX_SIZE; i++) {
        for (int j = 0; j < MAX_SIZE; j++) {
            #pragma HLS PIPELINE
            out[i * MAX_SIZE + j] = localC[i][j];
        }
    }
}
}