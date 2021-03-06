Rails.application.routes.draw do
  #Route for IoTdevice that send data to this gateway
  post 'receiver/recevie'
  get 'receiver/state'
  get 'sensors/my'
  get 'receiver/sensors'
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
 get 'aggiorna_firmware',to: 'sensors#aggiorna_firmware'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
