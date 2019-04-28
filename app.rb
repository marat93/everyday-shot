require "rubygems"
require "bundler/setup"
require "dropbox_api"
require "pry-byebug"

file_name = "#{Time.now.strftime('%Y-%m-%d_%H-%M-%S')}.jpg"
file_path = File.join(Dir.pwd, "shots", file_name)

imagesnap_command = `zsh -c 'imagesnap -w 3 #{file_path}'`

file_content = IO.read(file_path)

dropbox_client = DropboxApi::Client.new
dropbox_client.upload("/#{file_name}", file_content)
