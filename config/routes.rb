Rails.application.routes.draw do
 resources :job
 resources :category
 root 'job#index'
end
