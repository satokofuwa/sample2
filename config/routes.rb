Rails.application.routes.draw do
  resources :blogs do
    collection do
      post :confirm
    end
    member do
      patch :confirm
    end
  end
end
