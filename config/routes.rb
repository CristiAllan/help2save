Rails.application.routes.draw do
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

  get '/institutions/list', to: 'public#listInstitution'
  get '/voluntaries/list', to: 'public#listVoluntary'

  get 'voluntary/profile', to: 'public#voluntary'
  get 'institution/profile', to: 'public#institution'

end
