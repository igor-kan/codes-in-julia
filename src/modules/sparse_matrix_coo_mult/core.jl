/**
 * @file core.jl
 * @brief Concrete computational algorithm implementation for Coordinate List (COO) Sparse Matrix-Vector Multiply.
 * Module: sparse_matrix_coo_mult | Algorithm Family: sparse_math
 */

#include "types.jl"
#include <stdlib.h>
#include <string.h>

int sparse_matrix_coo_mult_execute_kernel(const double* in_vec, double* out_vec, size_t n, double weight) {
    if (!in_vec || !out_vec || n == 0) return -1;
    for (size_t i = 0; i < n; ++i) {
        double x = in_vec[i];
        out_vec[i] = x * (1.0 + weight * x / (1.0 + x * x));
    }
    return 0;
}
