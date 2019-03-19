Rails.application.routes.draw do
  root "stories#index"
  resources :stories do
    resources :scenes do
      resources :paths
    end
  end

end