Rails.application.routes.draw do
  root 'site/home#index'
  
  namespace :site do
    get 'home/index'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
