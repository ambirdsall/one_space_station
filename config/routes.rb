Rails.application.routes.draw do
  get '/convert', to: 'conversions#convert', as: :conversion
end
