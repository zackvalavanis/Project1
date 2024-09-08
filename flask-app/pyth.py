import requests
import pandas as pd
import matplotlib.pyplot as plt

url = 'http://localhost:3000/data.json'

response = requests.get(url)
data = response.json()

df = pd.DataFrame(data)

df['year'] = pd.to_numeric(df['year'], errors ='coerce')
df['value'] = pd.to_numeric(df['value'], errors='coerce')

plt.figure(figsize=(10,6))
plt.plot(df['year'], df['value'], marker='o')
plt.title('year vs value')
plt.xlabel('year')
plt.ylabel('value')
plt.grid(True)
plt.show()