import os, fnmatch
from robot.api.deco import keyword

__version__ = "1.0.0"


class ListResources:
    def __init__(self):
        ROBOT_LIBRARY_VERSION = __version__
        ROBOT_LIBRARY_SCOPE = "GLOBAL"

    @keyword
    def return_resource_list(self, path):
        filelist = fnmatch.filter(os.listdir(path), "*.resource")
        return_list = []
        for file in filelist:
            return_list.append(file.split(".")[0])
        return return_list

    @keyword
    def return_variables_list(self, path):
        filelist = fnmatch.filter(os.listdir(path), "*.py")
        return_list = []
        for file in filelist:
            return_list.append(file.split(".")[0])
        return return_list
