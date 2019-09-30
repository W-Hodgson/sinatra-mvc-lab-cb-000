require_relative 'config/environment'
require_relative 'models/pig_latinizer.rb'

class App < Sinatra::Base

  get '/' do

    erb :user_input
  end

  post '/piglatinize' do
    @pig_latin = PigLatinizer.new(params[:text])

    erb :pig_latin_output
  end
end
