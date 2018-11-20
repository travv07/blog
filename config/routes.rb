Rails.application.routes.draw do
  get 'articles/index'
  get 'articles/new'
  get 'articles/create'
  get 'articles/edit'
  get 'articles/update'
  get 'articles/destroy'
  get 'welcome/index'
  	resources :articles do
      resources :comments
    end
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
