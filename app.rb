require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    # pl = Puppy.new
    @puppy = Puppy.new(params['name'], params['breed'], params['age'])
    erb :display_puppy
  end

end


# pl = PigLatinizer.new
#     @piglatin = pl.piglatinize(params[:user_phrase])
