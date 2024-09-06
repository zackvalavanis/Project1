import json 
import requests

url = "https://data.wa.gov/api/views/f6w7-q2d2/rows.json?accessType=DOWNLOAD"

response = requests.get(url)


if response.status_code == 200:
  data = response.json()
  with open('data.json', 'w') as file:
    json.dump(data, file)
  print("data saved")
else:
   print(f"failed")

