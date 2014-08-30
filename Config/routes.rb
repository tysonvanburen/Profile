Rails.application.routes.draw do
  root 'static#home'
  resources :static, only: [:about, :contact]
  resources :posts do
    resources :topics, shallow: true
  end
end
