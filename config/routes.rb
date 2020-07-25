Rails.application.routes.draw do
  get 'pages/info'
  
  resources :categories
  resources :products

  root to: redirect('pages/info')
end
