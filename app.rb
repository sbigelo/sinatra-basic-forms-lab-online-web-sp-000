require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    pl = Puppy.new
    @puppy = (pl.params[:name],pl.params[:breed], pl.params[:age])
    erb :display_puppy
  end

end


# pl = PigLatinizer.new
#     @piglatin = pl.piglatinize(params[:user_phrase])
