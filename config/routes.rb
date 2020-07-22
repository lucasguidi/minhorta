Rails.application.routes.draw do
  root to: redirect('/product/index')

  get 'category/index'
  get 'category/new'
  get 'category/create'
  get 'category/show'
  get 'category/update'
  get 'category/destroy'
  get 'product/index'
  get 'product/new'
  get 'product/create'
  get 'product/show'
  get 'product/update'
  get 'product/destroy'

end
