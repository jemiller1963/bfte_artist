require 'sidekiq/web'

Rails.application.routes.draw do
  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end


  devise_for :users, controllers: {
    confirmation: 'confirmation'
  }
  root to: 'home#index'
end
