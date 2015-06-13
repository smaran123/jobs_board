Rails.application.routes.draw do
 
resources :jobs
root "jobs#index"
 resources :home, only: [:index]
end
