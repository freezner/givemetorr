import requests
from bs4 import BeautifulSoup

req = requests.get('http://www.torrentmap.com/search.php?stx=%ED%95%9C%EB%81%BC%EC%A4%8D%EC%87%BC&search_type=')

html = req.text

soup = BeautifulSoup(html, 'html.parser')

print(soup)