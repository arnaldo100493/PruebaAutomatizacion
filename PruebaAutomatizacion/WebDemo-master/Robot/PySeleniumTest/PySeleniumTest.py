import Selenium2Library
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time
from selenium.webdriver.support.wait import WebDriverWait

'''
Define class with methods which can be used as keywords in RIDE
'''      
class Selenium_test:

    def Close_Browser(self):
        self.driver.close()
        self.driver.quit()
     
    def Open_Browser(self,browser):
        if browser == "Chrome":
            self.driver = webdriver.Chrome('D:\DriversForPython\chromedriver_win32.exe')
        elif browser == "IE":
            self.driver = webdriver.Ie("D:\MicrosoftWebDriver.exe")
            
    def launch(self,URL):
        self.driver.get(URL)
    
    def search(self,searchKW):
        self.driver.find_element_by_name("q").send_keys(searchKW)
        self.driver.find_element_by_xpath(".//*[@id='sbtc']/div[2]/div[2]/div[1]/div/ul/li[5]/div/span[1]/span/input").click()
        return

if __name__ == '__main__':
    obj1 = Selenium_test()
    try:
        obj1.Open_Browser("Chrome")
        obj1.launch("http://www.google.in")
        obj1.search("Robot Framework")
        print "Test executed successfully"
    finally:
        obj1.Close_Browser()