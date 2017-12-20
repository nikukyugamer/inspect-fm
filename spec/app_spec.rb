require_relative '../app.rb'
require 'rack/test'

describe 'Sinatra App' do
  include Rack::Test::Methods

  def app
    @app ||= Sinatra::Application
  end

  describe 'HTTP Response Head test' do
    context 'when GET to /' do
      before { get '/' }
      it 'HTTP Response is 200 OK' do
        expect(last_response.status).to eq 200
      end
    end

    context 'when GET to /start' do
      before { get '/start' }
      it 'HTTP Response is 200 OK' do
        expect(last_response.status).to eq 200
      end
    end

    context 'when GET to /:db_name' do
      # before { get '/:db_name' }
      # it 'HTTP Response is 200 OK' do
        # expect(last_response.status).to eq 200
      # end
    end

    context 'when GET to /:db_name/:layout_name' do
      # before { get '/:db_name/:layout_name' }
      # it 'HTTP Response is 200 OK' do
        # expect(last_response.status).to eq 200
      # end
    end
  end
end
