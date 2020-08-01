Rails.application.routes.draw do
  get 'pages/info'
  
  resources :categories do
    member do
      post :update_state
    end
  end
  resources :products

  root to: redirect('pages/info')
end
