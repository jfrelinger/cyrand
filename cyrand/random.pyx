import numpy as np
cimport numpy as np
cimport cython

from cython.operator cimport dereference as deref

from libcpp cimport bool

cdef extern from "boost/random/mersenne_twister.hpp" namespace "boost::random":
    # random number generator
    cdef cppclass mt19937:
        #init
        mt19937()
        #attributes

        #methods
        seed(unsigned long)


cdef extern from "rng_wrapper.hpp":
    # wrapper to distributions ...
    cdef cppclass rng_sampler[result_type]:
        #init
        rng_sampler(mt19937)
        rng_sampler()
        # methods (gamma and exp are using rate param)
        result_type normal(result_type, result_type)
        result_type gamma(result_type, result_type)
        result_type uniform(result_type, result_type)
        result_type exp(result_type)
        result_type chisq(result_type)

ctypedef mt19937 rng

