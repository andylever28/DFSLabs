Rails.application.routes.draw do
	
  get 'pga/home'

  get 'nfl/home'

  get 'nba/home'

  root 'main#home'
  get 'main/home'

end
