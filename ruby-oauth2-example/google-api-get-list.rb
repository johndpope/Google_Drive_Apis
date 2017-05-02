require 'google/apis'
require 'google_drive'

CLIENT_ID = "18060364471-o2228or5ijg2ur7dmoqk7jvcnu81ecte.apps.googleusercontent.com"
CLIENT_SECRET = "SFVVBuEEWNvkKM32pqj0OdX2"
REFRESH_TOKEN = "1/eDVHjHJIPLkabutJdV17Bs2jkKSLQqU_SIANIiX3xAs"

client = OAuth2::Client.new(
    CLIENT_ID, CLIENT_SECRET,
    :site => "https://accounts.google.com",
    :token_url => "/o/oauth2/token",
    :authorize_url => "/o/oauth2/auth"
)

auth_token = OAuth2::AccessToken.from_hash(client, { :refresh_token => REFRESH_TOKEN, :expires_at => 3600 })
auth_token = auth_token.refresh!

session = GoogleDrive.login_with_oauth(auth_token.token)

for file in session.files
    puts file.title
end
