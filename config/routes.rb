Rails.application.routes.draw do
  
  root 'payments#index'
  get '/payment/checkout' => 'payments#checkout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
