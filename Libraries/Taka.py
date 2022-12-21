from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.wait import WebDriverWait


class Taka:

    @staticmethod
    def test_user_login():
        driver = webdriver.Chrome()
        driver.get('https://spa.qvp.uat.devops.takamol.support/home')
        driver.maximize_window()
        WebDriverWait(driver, 10).until(
            EC.visibility_of_element_located((By.XPATH, "(//*[contains(@href,'/candidate/login')])[1]")))
        driver.find_element(By.XPATH, "(//*[contains(@href,'/candidate/login')])[1]").click()

        driver.find_element(By.XPATH, "//input[contains(@type,'email')]").send_keys('ghadeer_candidite@inboxbear.com')
        driver.find_element(By.XPATH, "//input[contains(@type,'password')]").send_keys('Ghadeerk@12')
        driver.find_element(By.XPATH, "//span[contains(text(),'Continue')]").click()
        WebDriverWait(driver, 10).until(
            EC.visibility_of_element_located((By.XPATH, "//input[contains(@autofocus,'autofocus')]")))
        driver.find_element(By.XPATH, "//input[contains(@autofocus,'autofocus')]").send_keys('000000')

        WebDriverWait(driver, 10).until(EC.visibility_of_element_located(
            (By.XPATH, "//span[contains(text(),'START VERIFICATION') or contains(text(),'START REQUEST')]")))
        verification_request_button = driver.find_element(By.XPATH,
                                                          "//span[contains(text(),'START VERIFICATION') or contains("
                                                          "text(),'START REQUEST')]")
        assert verification_request_button.is_displayed()
        driver.quit()
