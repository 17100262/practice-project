Rails.application.routes.draw do
  devise_for :users
  resources :degreeprograms
  resources :subdisciplines
  resources :cities
  resources :discipline_universities
  resources :disciplines
  resources :universities
  root to: "disciplines#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
