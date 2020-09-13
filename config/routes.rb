Rails.application.routes.draw do
 
 get '/students' , to: "students#index"
 get '/students/:id/activate', to: "students#activate" , as:'activate_student'

#get '/register', to: 'users#new', as: 'register'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :students, only: [:index,:show]

end