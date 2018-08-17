from distutils.core import setup
from Cython.Build import cythonize
import numpy
import distutils.sysconfig
distutils.sysconfig.get_config_var('LINKFORSHARED')

setup(name="bbox_cython", ext_modules=cythonize('bbox.pyx'), include_dirs=[numpy.get_include()])