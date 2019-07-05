# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
    resources :contrato, only: [:new, :create, :destroy, :edit, :update, :index]
    get 'contratos', :to => 'contrato#list'
    get 'create_contrato', :to => 'contrato#create'

    resources :vigencia, only: [:new, :create, :destroy, :edit, :update, :index]

end
