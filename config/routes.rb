Rails.application.routes.draw do
  root 'pages#index'

  devise_for :users
  devise_scope :user do
    delete 'sign_out', :to => 'devise/sessions#destroy'
    get '/login' => 'devise/sessions#new'
    get '/register' => 'devise/registrations#new'
    get '/settings' => 'devise/registrations#edit'
  end

  namespace :admin, path: '/master' do
    get "/" => "dashboards#index", as: 'master'
  end

  get "/dashboard" => 'dashboards#index'
end
