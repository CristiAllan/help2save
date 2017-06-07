Rails.application.routes.draw do
  devise_for :voluntaries
  devise_for :institutions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  get '/institutions/:id', to: 'institutions#show' #perfil publico da instituição
  get '/voluntaries/:id', to: 'voluntaries#show' #perfil publico do voluntario

  resources :jobs, only: [:index, :show, :new, :create, :delete, :edit] #index será a tela Explorar Jobs galera
  get '/candidate/new', to: 'voluntary_jobs#new' #rota onde usuário vai preencher form de candidatura a Job


end
