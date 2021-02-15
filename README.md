# ThingsBoard IoT Lab
### Getting started
Follow the steps on this page https://thingsboard.io/docs/getting-started-guides/helloworld/ to get started with a free thingsboard account. (We will be using the Live Demo server for our purposes)
There is also instructions on how to set up a device. In this lab, we will be mocking an in-home thermometer.

### Provision a Device, and Setup an Alarm
* Go through steps 1 through 5 on the 'Getting Started With Thingsboard' page linked above.
* In theme with the brutal cold temperatures across our offices, we will be mocking a temperature sensor in a home, so the alarm we make will need to test for low temperatures (45 degrees F).
* Since using a 3rd party sms service will cost money, we will not be moving past step 5

### Run python script and verify chart and alarm
* The other file in this repo, `temperatureScript.py` is a python script that will mock temperature data being sent from a thermometer in your home to your thingsboard dashboard.
* The script will need to be udpated with your device's access token in order to properly integrate with your thingsboard dashboard
* To complete this badge, run this script (either locally or on the online compiler linked below) and screenshot a flow chart of the temperature over time as well as the alarm widget after the script has finished.

#### running the script
* Locally, if you have python3: `python3 temperatureScript.py`

* Online python compiler/runner: https://www.programiz.com/python-programming/online-compiler/
