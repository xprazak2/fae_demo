Rails.application.routes.draw do

  scope '(:locale)', :locale => /en|cs/ do
    # root "static_pages#home", :page => 'home'
    get '/' => 'static_pages#home', as: 'home'
  end

  namespace :admin do
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
