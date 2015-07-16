Rails.application.routes.draw do
  get 'comments/new'

  get 'comments/show'

  get 'comments/index'

  get 'comments/create'

  get 'comments/destroy'

  get 'comments/update'

	root to: 'posts#new'
  resources :posts
end
