Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'posts#index'
  resources :posts, only: [:new, :create, :destroy, :edit, :update]
  resources :menus, only: [:index, :show, :new, :create, :edit, :update, :destroy]

end
