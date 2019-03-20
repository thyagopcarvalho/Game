Rails.application.routes.draw do
  root "stories#index"
  resources :stories do
    resources :scenes do
      member do
        post :next
      end
      resources :paths
    end
  end
end