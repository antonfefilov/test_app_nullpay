Rails.application.routes.draw do
  root to: "welcomes#show"

  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users

  ActiveAdmin.routes(self)

  resource :welcome, only: %w[ show ]
end
