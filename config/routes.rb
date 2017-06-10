Rails.application.routes.draw do
  get '/institutions/list', to: 'public#listInstitution'
  get '/voluntaries/list', to: 'public#listVoluntary'

  get '/voluntaries/profile/:id', to: 'public#voluntary'
  get '/institutions/profile/:id', to: 'public#institution'

  devise_for :voluntaries, controllers: {
    registrations: 'voluntaries/registrations',
    sessions: 'voluntaries/sessions'
  }
  devise_for :institutions, controllers: {
    registrations: 'institutions/registrations',
    sessions: 'institutions/sessions'
  }

  root to: 'site/home#index'

  resources :jobs, only: [:index, :show, :new, :create, :delete, :edit] #index será a tela Explorar Jobs galera
  get '/candidate/new', to: 'voluntary_jobs#new' #rota onde usuário vai preencher form de candidatura a Job



  # namespace :institutions do
  #   get 'list', to: 'public#listInstitution'
  #   get 'profile/:id', to: 'public#institution'
  # end
  #
  # namespace :voluntaries do
  #   get 'list', to: 'public#listVoluntary'
  #   get 'profile/:id', to: 'public#voluntary'
  # end
end
