class Interface < Sinatra::Base
  set :public_folder, File.dirname(__FILE__) + '/views'

  get '/' do
    erb :form
  end
end
