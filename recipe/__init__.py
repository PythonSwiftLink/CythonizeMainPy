from kivy_ios.toolchain import CythonRecipe

class CythonizedMainPy(CythonRecipe):
    version = "master"
    url = "src"
    library = "libCythonizedMainPy.a"
    #depends = ["python3", "hostpython3"]
    depends = ["python3"]
    # Frameworks you used
    pbx_frameworks = []

    def install(self):
        self.install_python_package(
            # Put the extension name here
            name=self.so_filename("cythonized_main"), is_dir=False)

recipe = CythonizedMainPy()