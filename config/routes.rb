Rails.application.routes.draw do

  get 'testowners/profile'

  resources :testowners do
    resources :tests
  end

  devise_for :testowners
  get 'tests/index'
  get 'tests/new'

  get 'tests/edit'

  get 'companies/profile'
  resources :companies do
    resources :tests
  end

  devise_for :companies, controllers: { registrations: "registrations" }

  get 'refer_friends/index'

  get 'experiences/new'

  get 'experiences/edit'

  get 'communities/index'

  get 'up_coming_tests/index'

  get 'on_going_tests/index'

  get 'points/my_points'

  get 'points/redeem_points'

  root 'welcome#index'

  get 'users/index'

  get 'users/show'

  get 'devices/new'

  get 'devices/create'

  get 'devices/edit'

  get 'devices/update'

  get 'faq/index'

  get 'register_as_company/login'

  get 'register_as_company/signup'

  get 'compdash/index'

  get 'userdash/index'
  get 'userdash/profile'

  devise_for :users, controllers: { registrations: "registrations" }

  resources :users do
    resources :devices
    resources :experiences
  end


  get 'about/index'
  get 'contact/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
