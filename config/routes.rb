Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "games#top"
  get 'games/index'
  get 'games/top'
  get 'results/index'
end
