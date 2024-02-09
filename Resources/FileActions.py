import os
from robot.api.deco import keyword

__version__ = "1.0.0"


class FileActions:
    def __init__(self):
        ROBOT_LIBRARY_VERSION = __version__
        ROBOT_LIBRARY_SCOPE = "GLOBAL"

    @keyword
    def file_exists(self, file):
        return os.path.isfile(file)
