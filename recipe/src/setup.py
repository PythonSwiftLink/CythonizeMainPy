from distutils.core import setup, Extension

setup(name="cythonized_main",
        version='1.0',
        ext_modules=[
            Extension("cythonized_main", # Put the name of your extension here
                    ['main.c'],
                    libraries=[],
                    library_dirs=[],
                    extra_compile_args=['-w'],
                    )
        ]
    )