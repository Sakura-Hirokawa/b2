Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
  namespace :public do
    resources :items
    resources :cart_items do
      collection do
        delete 'destroy_all'
      end
  end
  end
end
