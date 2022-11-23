import requests
import json

resp = requests.get("http://localhost:5000/predictions")
# print(dir(resp))
# print(resp.raw)
# print(dir(resp.json))
print(json.loads(resp.text))