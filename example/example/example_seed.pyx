import numpy as np
cimport numpy as np

cimport cython

include "random.pyx"

@cython.boundscheck(False)
def example_seed(n, seed):

    cdef int N = n
    cdef unsigned long Seed = seed
    
    cdef rng r
    cdef rng_sampler[double] * rng_p = new rng_sampler[double](Seed)
    cdef rng_sampler[double] rng = deref(rng_p)

    cdef np.ndarray[np.double_t, ndim=1] result = np.empty(N, dtype=np.double)

    for i in range(N):
        result[i] = rng.normal(0.0, 2.0)
    print result
    return result
