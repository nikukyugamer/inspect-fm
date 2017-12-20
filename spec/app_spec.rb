require_relative '../app.rb'
require 'rack/test'

describe 'Sinatra App' do
  include Rack::Test::Methods

  def app
    @app ||= Sinatra::Application
  end

  describe 'HTTPレスポンスヘッダのテスト' do
    context '/ へ GET すると' do
      before { get '/' }
      it '200 OK が返ってくる' do
        expect(last_response.status).to eq 200
      end
    end

    context '/start へ GET すると' do
      before { get '/start' }
      it '200 OK が返ってくる' do
        expect(last_response.status).to eq 200
      end
    end
 
    context '/:db_name へ GET すると' do
      # before { get '/:db_name' }
      # it '200 OK が返ってくる' do
        # expect(last_response.status).to eq 200
      # end
    end
 
    context '/:db_name/:layout_name へ GET すると' do
      # before { get '/:db_name/:layout_name' }
      # it '200 OK が返ってくる' do
        # expect(last_response.status).to eq 200
      # end
    end
  end
end
