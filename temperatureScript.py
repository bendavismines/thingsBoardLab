import requests
import time

def post_to_thingsboard(temp):
  base_url="http://demo.thingsboard.io/api/v1/<YOUR_DEVICE_ACCESS_TOKEN>/telemetry"
  payload = '{"temperature":' + str(temp) + '}'
  response = requests.post(base_url, payload)
  print(temp)

temps = [70.2, 70.0, 67.0, 66.0, 55.0, 40.0, 35.0]

for temp in temps:
  post_to_thingsboard(temp)
  time.sleep(10);
