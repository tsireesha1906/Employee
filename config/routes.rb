Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "employee_detail#index"
   #get "/employee_detail", to: "employee_detail#index"
   resources :employee_detail

end

