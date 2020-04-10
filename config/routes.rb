Rails.application.routes.draw do
  resources :sensors
  resources :sensors_group_subscriptions
  resources :sensors_groups
  resources :misuration_subscriptions
  resources :misurations
  #devise_for :users, :controllers => { registrations: 'registrations'}
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
 root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
