Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  #Student Routes
  get "/students" => "students#index"
  get "/students/:id" => "students#show"
  post "/students"  => "students#create"
  patch "/students/:id" => "students#update"
  delete "students/:id" => "students#destroy"

  #Experiences Routes
  get "/experiences"        => "experiences#index"
  get "/experiences/:id"    => "experiences#show"
  post "/experiences"       => "experiences#create"
  patch "/experiences/:id"  => "experiences#update"
  delete "/experiences/:id" => "experiences#destroy"

  #Capstone Routes
  get "/capstones"         => "capstones#index"
  get "/capstones/:id"     => "capstones#show"
  post "/capstones"        => "capstones#create"
  patch "/capstones/:id"   => "capstones#update"
  delete "/capstones/:id"  => "capstones#destroy"

  #Sessions Routes
  post "/sessions" => "sessions#create"

  #Education Routes
  get "/educations" => "educations#index"
  post "/educations" => "educations#create"
  get "/educations/:id" => "educations#show"
  patch "/educations/:id" => "educations#update"
  delete "/educations/:id" => "educations#destroy"


end
