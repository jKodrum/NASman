import json
import urllib.request
import urllib.parse
import sys
import requests

url = "https://graph.facebook.com/me/photos?access_token=" + sys.argv[1]

req = urllib.request.Request(url)
ret = urllib.request.urlopen(req).read().decode()

num = 0
s_l = []
x = json.loads(ret)
for data in x['data']:
    f = open(str(num) + '.jpg', 'wb')
    req = requests.get(data['source'])
    f.write(req.content)
    f.close()
    num += 1
print ("i'm here")
