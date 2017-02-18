Rails.application.routes.draw do





  get 'register_as_company/login'

  get 'register_as_company/signup'

  get 'compdash/index'

  get 'userdash/index'
  get 'userdash/profile'

  devise_for :users, controllers: { registrations: "registrations" }
  root 'welcome#index'
  get 'about/index'
  get 'contact/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
