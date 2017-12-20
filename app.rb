require 'sinatra'
require 'sinatra/reloader'
require 'filemaker'

filemaker_config = YAML.load_file('config/filemaker.yml')
server = Filemaker::Server.new do |config|
  config.host         = filemaker_config['host']
  config.account_name = filemaker_config['account_name']
  config.password     = filemaker_config['password']
end

get '/' do
  erb :index
end

get '/start' do
  @db_names = server.databases.all
  erb :db_list
end

get '/:db_name' do
  begin
    @db_name = params['db_name'].force_encoding("UTF-8")
    @layout_names = server.database[@db_name].layouts.all
    erb :layout_list
  rescue => exception
    erb :error, layout: false
  end
end

get '/:db_name/:layout_name' do
  begin
    @db_name = params['db_name'].force_encoding("UTF-8")
    @layout_name = params['layout_name'].force_encoding("UTF-8")

    @field_names = []
    server.database[@db_name].layout[@layout_name].view.fields.keys.each do |key|
      @field_names << key
    end
    erb :field_list
  rescue => exception
    erb :error, layout: false
  end
end
