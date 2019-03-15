Rails.application.routes.draw do
  resources :stories do
    resources :scenes do
      resources :paths
    end
  end
  root "welcome#index"
end