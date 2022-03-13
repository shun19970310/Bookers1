Rails.application.routes.draw do
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'top' => 'books#top'
  get 'lists/:id' => 'lists#show'
  get 'lists/:id' => 'lists#show', as: 'list'
  get 'books/:id/edit' => 'books#edit', as: 'edit_list'

end
