Rails.application.routes.draw do
  resources :categories, :projects

  root to: redirect('/categories')
end
