Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'species#index'})
  match('/species', {:via => :get, :to => 'species#index'})
end
