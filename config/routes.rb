Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'members#index'
  resources :members do
    collection do
      get "search", to: "members#search"
    end
  end
end
