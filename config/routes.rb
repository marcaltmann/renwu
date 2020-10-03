Rails.application.routes.draw do
  resources :categories

  resources :projects do
    resources :tasks
  end

  root to: redirect('/categories')
end
