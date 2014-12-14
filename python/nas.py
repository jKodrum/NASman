#!/usr/local/bin/python3
import json
import urllib.request
import urllib.parse
import sys

#ckip
post_url = sys.argv[1]
token = sys.argv[2]

# prepare http request
request = urllib.request.Request(post_url)
#request.add_header("Cookie", 'authtok=' + input('cookie: '))
request.add_header("Cookie", 'authtok=' + token)
# get response
ret = urllib.request.urlopen(request).read()
print( ret)
