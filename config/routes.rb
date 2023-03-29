Rails.application.routes.draw do
 get '/heroes', to: 'hero#index'
 get '/heroes/:id', to: 'hero#show'
 get '/powers', to: 'powers#index'
 get '/powers/:id', to: 'powers#show'
 patch '/powers/:id', to: 'powers#update'
 get '/hero_powers', to: 'hero_power#show'
end
