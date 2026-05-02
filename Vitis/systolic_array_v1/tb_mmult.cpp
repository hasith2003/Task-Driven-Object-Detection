#include <iostream>
#include <vector>

// Prototype of the hardware function
extern "C" void mmult(const int *a, const int *b, int *out, int size);

int main() {
    const int N = 16;
    std::vector<int> a(N * N);
    std::vector<int> b(N * N);
    std::vector<int> hw_res(N * N, 0);
    std::vector<int> sw_res(N * N, 0);

    // Initialize matrices with simple values
    for (int i = 0; i < N * N; i++) {
        a[i] = i;
        b[i] = i * 2;
    }

    // Run Software Golden Model for comparison
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            for (int k = 0; k < N; k++) {
                sw_res[i * N + j] += a[i * N + k] * b[k * N + j];
            }
        }
    }

    // Call the HLS Hardware Kernel
    std::cout << "Running Systolic Array Simulation..." << std::endl;
    mmult(a.data(), b.data(), hw_res.data(), N);

    // Check results
    int errors = 0;
    for (int i = 0; i < N * N; i++) {
        if (hw_res[i] != sw_res[i]) {
            errors++;
        }
    }

    if (errors == 0) {
        std::cout << "TEST PASSED! Systolic Array is working perfectly." << std::endl;
        return 0;
    } else {
        std::cout << "TEST FAILED! Errors found: " << errors << std::endl;
        return 1;
    }
}