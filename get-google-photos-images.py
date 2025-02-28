from bs4 import BeautifulSoup
import urllib.request
import os
import json

def get_soup(url,header):
  return BeautifulSoup(urllib.request.urlopen(urllib.request.Request(url,headers=header)),'html.parser')

query = input('>>> What image do you want? ') 
image_type=query
query= query.split()
query='+'.join(query)
url="https://www.google.co.in/search?q="+query+"&source=lnms&tbm=isch"
print ('>>> Base searching page from Google image:', url)

header={'User-Agent':"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36"}
soup = get_soup(url,header)


ActualImages=[]# contains the link for Large original images, type of  image
for a in soup.find_all("div",{"class":"rg_meta"}):
  link , Type =json.loads(a.text)["ou"]  ,json.loads(a.text)["ity"]
  ActualImages.append((link,Type))

print('>>> Base page has', len(ActualImages),'images in total')

###print images
for i,(img,Type) in enumerate(ActualImages[:5]):
  try:
    req = urllib.request.Request(img, headers=header)
    raw_img = urllib.request.urlopen(req).read()

    cntr = len([i for i in os.listdir(DIR) if image_type in i]) + 1
    print(cntr)

    if len(Type)==0:
      f = open(image_type + "_"+ str(cntr)+".jpg",'wb')
    else:
      f = open(image_type + "_"+ str(cntr)+"."+Type,'wb')
    f.write(raw_img)
    f.close()
  except Exception as e:
    print('>>> Could not load: '+img)
    print(e)

print ('>>> Finished!')
