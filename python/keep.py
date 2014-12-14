# keep NAS login
import json
import urllib.request
import urllib.parse
import sys

#ckip
post_url = "http://10.10.220.233/cmd,/ck6fup6/register_main/auth_ping"
token = "Cn4jItTQBqZQVZsQb7FRxgHZD1UzOWvvlL5oO4TKmHMlXs25pjAtgfSu3Bay+MkU"

# prepare http request
request = urllib.request.Request(post_url)
#request.add_header("Cookie", 'authtok=' + input('cookie: '))
request.add_header("Cookie", 'authtok=' + token)
# get response
