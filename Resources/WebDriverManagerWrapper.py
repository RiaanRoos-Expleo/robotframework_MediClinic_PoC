from robot.api.deco import keyword
from selenium import webdriver
from selenium.webdriver.chrome.service import Service as ChromeService
from selenium.webdriver.firefox.service import Service as FirefoxService
from webdriver_manager.chrome import ChromeDriverManager
from webdriver_manager.firefox import GeckoDriverManager
from selenium.common.exceptions import WebDriverException
from robot.api import FatalError

__version__ = "1.0.0"


class WebDriverManagerWrapper:
    def __init__(self):
        ROBOT_LIBRARY_VERSION = __version__
        ROBOT_LIBRARY_SCOPE = "GLOBAL"

    def __init__(self):
        self.driver = None

    @keyword
    def open_browser_with_webdrivermanager(self, url, browser_name="chrome"):
        try:
            if browser_name == "chrome":
                # Automatically download and use ChromeDriver
                service = ChromeService(executable_path=ChromeDriverManager().install())
                self.driver = webdriver.Chrome(service=service)
            elif browser_name == "firefox":
                # Automatically download and use GeckoDriver
                service = FirefoxService(executable_path=GeckoDriverManager().install())
                self.driver = webdriver.Firefox(service=service)
            else:
                raise ValueError("Unsupported browser: {}".format(browser_name))

            self.driver.get(url)  # Navigate to the specified URL
        except WebDriverException as e:
            if "ERR_NAME_NOT_RESOLVED" in str(e):
                raise FatalError(f"The URL '{url}' is not accessible.")
            else:
                raise FatalError(
                    f"An error occurred while trying to open the browser: {e}"
                )

    @keyword
    def close_browser_with_webdrivermanager(self):
        if self.driver:
            self.driver.quit()
            self.driver = None
