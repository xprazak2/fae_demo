Rails.application.routes.draw do

  root "static_pages#home", :page => 'home'

  namespace :admin do
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
