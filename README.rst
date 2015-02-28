=======
cy_rand
=======

*This is still under heavy development.*

This is simply a set of cython definitions for the Boost TR1 Random sampling
library.  For now, the best working model is to inline them using the
"include" cython statement. "Installing" the package only stores the
definitions and C++ code in site_packages so that distutils can find
it later.

Requirements
------------

* Boost
* NumPy
* Cython

Installation and testing
------------------------

Install via

::

    python setup.py install

There are example programs in the "example" folder along with a setup.py file.
To build them, change to the cyrand/example directory and build in place:

::

    python setup.py build_ext --inplace

Then run test_example.py and/or test_example_seed.py to try them out. You may
need to change the include_dirs to point to your installation of Boost.
