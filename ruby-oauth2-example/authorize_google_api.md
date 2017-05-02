# Authorization Code の取得
CLIENT_ID = 18060364471-o2228or5ijg2ur7dmoqk7jvcnu81ecte.apps.googleusercontent.com
CLIENT_SECRET = SFVVBuEEWNvkKM32pqj0OdX2
REDIRECT_URI = urn:ietf:wg:oauth:2.0:oob

https://accounts.google.com/o/oauth2/auth?client_id=${CLIENT_ID}&redirect_uri=${REDIRECT_URI}&scope=https://www.googleapis.com/auth/drive&response_type=code

## ブラウザでアクセスし、AUTHORAIZATION_CODE を取得
https://accounts.google.com/o/oauth2/auth?client_id=18060364471-o2228or5ijg2ur7dmoqk7jvcnu81ecte.apps.googleusercontent.com&redirect_uri=urn:ietf:wg:oauth:2.0:oob&scope=https://www.googleapis.com/auth/drive&response_type=code

# アクセストークンの取得
## ブラウザでアクセスにより取得したコードが AUTHORIZATION_CODE になる
AUTHORIZATION_CODE = 4/aXMR1M8_2sx4_wFvU5iFjJ_tNQ9D0WDx0aVMslh9XLY

curl -d client_id=${CLIENT_ID} -d client_secret=${CLIENT_SECRET} -d redirect_uri=${REDIRECT_URI} -d grant_type=authorization_code -d code=${AUTHORIZATION CODE} https://accounts.google.com/o/oauth2/token

##コンソールで curl を打つ
curl -d client_id=18060364471-o2228or5ijg2ur7dmoqk7jvcnu81ecte.apps.googleusercontent.com -d client_secret=SFVVBuEEWNvkKM32pqj0OdX2 -d redirect_uri=urn:ietf:wg:oauth:2.0:oob -d grant_type=authorization_code -d code=4/aXMR1M8_2sx4_wFvU5iFjJ_tNQ9D0WDx0aVMslh9XLY https://accounts.google.com/o/oauth2/token






curl -d client_id=18060364471-o2228or5ijg2ur7dmoqk7jvcnu81ecte.apps.googleusercontent.com -d client_secret=SFVVBuEEWNvkKM32pqj0OdX2 -d redirect_uri=urn:ietf:wg:oauth:2.0:oob -d grant_type=authorization_code -d code=4/DElUnUMc_Iislk-zgsI1E9DFFxQGGk4Hht1LXLwvTsE https://accounts.google.com/o/oauth2/token

curl -d client_id=18060364471-o2228or5ijg2ur7dmoqk7jvcnu81ecte.apps.googleusercontent.com -d client_secret=SFVVBuEEWNvkKM32pqj0OdX2 -d refresh_token=1/eDVHjHJIPLkabutJdV17Bs2jkKSLQqU_SIANIiX3xAs -d grant_type=refresh_token https://accounts.google.com/o/oauth2/token


