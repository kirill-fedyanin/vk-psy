Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'group_members#form'
  post 'group_members(.:format)', to: 'group_members#index'
  get 'users', to: 'user_info#index'
  namespace :vk_api do
    get 'users/:id', to: 'users#show', constraints: { id: /[\w+\.]+/ }
    get 'members', to: 'group_members#index'
  end
end
