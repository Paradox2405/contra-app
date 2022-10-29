import gspread
import pyautogui
import time



sa = gspread.service_account(filename="poised-renderer-340414-de64e153a209.json")

sh = sa.open("NL")

wks = sh.worksheet("NL")

#print (wks.row_count)
print(wks.acell('C1').value)
#print (x[-1])

#if x[-1] == '1asd' :
#    print("aa")

lastrow1 = int(input('last empty row id'))

cellID = 'C'+str(lastrow1)

while True :
    if wks.acell(cellID).value:
        print('aa')
        print(cellID)
        #pyautogui.click(x=1816, y=619, clicks =1)
        #time.sleep(5)
        location0 = pyautogui.locateOnScreen('play.png')
        pyautogui.click(location0)
        time.sleep(8)
        location1 = pyautogui.locateOnScreen('url.png')
        pyautogui.click(location1, clicks=3)
        pyautogui.write(wks.acell(cellID).value)
        pyautogui.press('enter')
        time.sleep(5)
        locationx = pyautogui.locateOnScreen('tick.png')
        pyautogui.click(locationx)
        location2 = pyautogui.locateOnScreen('claim.png')
        pyautogui.click(location2)
        time.sleep(5)
        location3 = pyautogui.locateOnScreen('pause.png')
        pyautogui.click(location3)
        lastrow1 = lastrow1 + 1
        cellID = 'C'+str(lastrow1)
    else:
        print('waiting')
        time.sleep(10)
        