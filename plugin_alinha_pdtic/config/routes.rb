# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
    resources :referencial, only: [:new, :create, :destroy, :edit, :update]
    get 'referenciais', :to => 'referencial#index'
    get '/novo_filho/:id', :to => 'referencial#novo_filho', :as => 'novo_filho'
    post 'novo_filho_create', :to => 'referencial#novo_filho_create'
end
