#!/usr/bin/env python3

#manca ancora da aprire airtable, aprire MySQL, aprire pec
from selenium import webdriver
from selenium.webdriver.common.by import By
import login_details
from pynput.keyboard import Key, Controller 
import keyboard
import time
from selenium.webdriver.chrome.options import Options
import os


#setting up login elements
vic_gmail = login_details.google_deckx_vic_username
vic_gmail_password = login_details.google_deckx_vic_password
#preparing driver to open first page of chrome
#driver = webdriver.Chrome()
keybo = Controller()
chrome_options = Options() 
chrome_options.add_experimental_option("detach", True)
driver = webdriver.Chrome(options=chrome_options)
driver.get("https://accounts.google.com/v3/signin/identifier?dsh=S352816545%3A1668964358477779&lp=1&service=mail&flowName=GlifWebSignIn&flowEntry=ServiceLogin&ifkv=ARgdvAtCvs-FUOZVSptVIaRsvKOveW50DuCq9CCANKkpt7Lvfaz-EK7crLraX14lswrcYZZhYHZIiw")
#driver.maximize_window()
#login
time.sleep(2)
driver.find_element(By.ID, "identifierId").send_keys(vic_gmail)
time.sleep(2)
keybo.press(Key.enter)
keybo.release(Key.enter)
time.sleep(2)
#driver.find_element(By.ID, "password").send_keys(vic_gmail_password)
keyboard.write(vic_gmail_password)
time.sleep(2)
keybo.press(Key.enter)
keybo.release(Key.enter)
time.sleep(2)
os.system("open -a Mail")
os.system("open -a ClickUp")
os.system("open -a Notion")

#driver = webdriver.Chrome(options=chrome_options)
#driver.get("https://accounts.google.com/v3/signin/identifier?dsh=S352816545%3A1668964358477779&lp=1&service=mail&flowName=GlifWebSignIn&flowEntry=ServiceLogin&ifkv=ARgdvAtCvs-FUOZVSptVIaRsvKOveW50DuCq9CCANKkpt7Lvfaz-EK7crLraX14lswrcYZZhYHZIiw")
#driver.maximize_window()
