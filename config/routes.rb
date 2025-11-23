Rails.application.routes.draw do
  resources :employees
  resources :departments
  
  root "employees#index"
end
