Rails.application.routes.draw do
	
  get 'pga/home'
  get 'pga/update'
  get 'pga/index'
  get 'pga/tournament'
  get 'pga/salary'
  get 'pga/lineup_generator'

  get 'nfl/home'

  get 'nba/home'

  root 'main#home'
  get 'main/home'

  resources :tournaments  
end
