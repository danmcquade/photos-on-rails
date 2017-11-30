Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  root to: "users#frontpage"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do

    member do "favorites"
      get 'favorites'
    end

    resources :photos do
      resources :comments

      member do
        post 'add_favorite'
        delete 'remove_favorite'
      end

    end
  end

end
