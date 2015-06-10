require_dependency "#{Rails.root}/lib/interface/interface"

Rails.application.routes.draw do
  root to: Interface

  get '/convert', to: 'conversions#convert', as: :conversion
end
