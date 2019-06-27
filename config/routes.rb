Rails.application.routes.draw do

  root 'codes#index'

  resources :codes

  # resources :payments, only: [:new, :show] do
  #   collection do
  #     post 'pay', to: 'payments#pay'
  #   end
  # end

end
