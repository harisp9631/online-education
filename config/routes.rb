Rails.application.routes.draw do
  devise_for :admins

  authenticated :admin do
    root to: "admin/home#index", as: :authenticated_root
  end

  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
