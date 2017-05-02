require 'google/apis/drive_v2'
require 'googleauth'
require 'googleauth/stores/file_token_store'

OOB_URI = 'urn:ietf:wg:oauth:2.0:oob'
SCOPE = 'https://www.googleapis.com/auth/drive'
WORKING_DIR = '/home/kamada.yuhei/ruby-oauth2-example/'
CLIENT_SECRET_FILE = WORKING_DIR + 'client_secret.json' 
TOKEN_YAML_FILE = WORKING_DIR + 'token.yaml' 

client_id = Google::Auth::ClientId.from_file(CLIENT_SECRET_FILE)
token_store = Google::Auth::Stores::FileTokenStore.new(:file => TOKEN_YAML_FILE)
authorizer = Google::Auth::UserAuthorizer.new(client_id, SCOPE, token_store)
user_id = 'kmduhey121@gmail.com'

credentials = authorizer.get_credentials(user_id)
if credentials.nil?
	url = authorizer.get_authorization_url(base_url: OOB_URI )
	puts "Open #{url} in your browser and enter the resulting code:"
	code = gets
	credentials = authorizer.get_and_store_credentials_from_code(user_id: user_id, code: code, base_url: OOB_URI)
end

Drive = Google::Apis::DriveV2
drive = Drive::DriveService.new
drive.authorization = credentials

files = drive.list_files()
files.items.each do |file|
	puts file.title
end
