Rails.application.routes.draw do
  root 'dashboard#index'
  resources :students, except: [:show]
  resources :courses, except: [:show]
  resources :classrooms, except: [:show, :edit, :update]
end
