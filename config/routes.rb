require_relative '../interface'

Rails.application.routes.draw do
  mount Interface.new => '/'

  get '/convert', to: 'conversions#convert', as: :conversion
end
