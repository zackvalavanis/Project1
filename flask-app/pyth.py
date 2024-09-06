import json 
import requests

url = "https://data.wa.gov/api/views/f6w7-q2d2/rows.json?accessType=DOWNLOAD"


response = requests.get(url)

if response.status_code == 200:
  data = response.json()
  print(data)
else:
  print(f"failed to retrieve: {response.status_code}")