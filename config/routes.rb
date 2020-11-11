Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/shows', to: "homes#index"
  get '/shows/:id', to: "homes#index"
  get '/about', to: "homes#index"
  get '/holidays', to: "homes#index"

  namespace :api do 
    namespace :v1 do
      resources :shows, only: [:index, :show]
      resources :episodes do
        member do
          post 'rerun'
        end
        collection do
          get 'holiday'
        end
      end
      resources :episodes, only: [:index, :show, :rerun, :holiday]
      resources :weeks, only: [:index, :show]
      resources :program_years, only: [:index, :show, :create, :new]
    end 
  end
end


