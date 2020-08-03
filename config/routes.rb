Rails.application.routes.draw do
  get 'pages/info'
  
  resources :categories do
    member do
      post :update_state
    end
  end
  resources :products do
    member do
      post :update_state
    end
  end

  root to: redirect('pages/info')
end
