Rails.application.routes.draw do
  namespace :admin do
    resources :blogs
    namespace :paper_trail do
      resources :versions
    end

    root to: "blogs#index"
  end
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
