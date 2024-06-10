import requests
import json

url = "https://starknet-sepolia.g.alchemy.com/v2/lINonYKIlp4NH9ZI6wvqJ4HeZj7T4Wm6"

payload = {
    "id": 1,
    "jsonrpc": "2.0",
    "method": "starknet_getClass",
    "params": [
        "latest",
        "0x054af96825d987ca89cf320f7c5a8031017815d884cff1592e8ff6da309f3ca6",
    ],
}
headers = {"accept": "application/json", "content-type": "application/json"}

response = requests.post(url, json=payload, headers=headers)

# Interpret and print the JSON response in a readable format
if response.status_code == 200:
    response_json = response.json()['result']
    print(json.dumps(response_json, indent=4))
else:
    print(f"Request failed with status code: {response.status_code}")
    print(response.text)
