import PyCall: pyimport

# See https://stackoverflow.com/questions/12332975/installing-python-module-within-code.
const PIP_PACKAGES = ["pychomp2", "cmgdb"]#, "dsgrn"]

sys = pyimport("sys")
subprocess = pyimport("subprocess")

subprocess.check_call(
    [
        sys.executable, 
        "-m", "pip", "install", "--user", "--upgrade", "-v", "-v", 
        PIP_PACKAGES...
    ]
)
