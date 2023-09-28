from setuptools import Extension, setup
from Cython.Build import cythonize

setup(
    name="linkl",
    zip_safe=False,
    ext_modules=cythonize(
        Extension("wrap_linkl",
            sources=["v0.1.0/lists/lists.c", "wrap_linkl.pyx"],
        )
    )
)
