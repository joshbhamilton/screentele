ActionController::Routing::Routes.draw do |map|
  
  map.resources :users
  map.resources :sessions,	:only => [:new, :create, :destroy]
  map.resources :movies
  map.signin	'/signin',	:controller => 'sessions', :action => 'new'
  map.signout	'/signout',	:controller => 'sessions', :action => 'destroy'
  map.contact	'/contact',	:controller => 'pages',	:action => 'contact'
  map.about	'/about',	:controller => 'pages', :action => 'about'
  map.help	'/help',	:controller => 'pages', :action => 'help'
  map.signup	'/signup',	:controller => 'users', :action => 'new'
  map.movies	'/movies',	:controller => 'movies',:action => 'index'
  map.listings '/listings', :controller => 'listings', :action => 'index'
  #map.screenings '/sc', :controller => 'screenings', :action => 'create'
  map.root			:controller => 'pages', :action => 'home'

  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.resources :screenings
end
