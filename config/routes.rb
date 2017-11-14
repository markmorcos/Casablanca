Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root "home#index"
  
  get "/about", to: "abouts#index", as: "abouts"
  get "/about/:id", to: "abouts#show", as: "show_about"
  
  get "/contact", to: "contacts#index", as: "contacts"
  post "/contact", to: "contacts#create"
  
  get "/projects", to: "projects#index", as: "projects"
  get "/projects/:id", to: "projects#show", as: "show_project"
  
  get "/clients", to: "clients#index", as: "clients"
  get "/clients/:id", to: "clients#show", as: "show_client"
  
  get "/services", to: "services#index", as: "services"
  get "/services/:id", to: "services#show", as: "show_service"
  
  get "/news", to: "news#index", as: "news"
  get "/news/:id", to: "news#show", as: "show_article"
end
