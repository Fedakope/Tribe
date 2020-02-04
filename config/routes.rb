Rails.application.routes.draw do
  get 'pages/statistiques'
  get 'search', to: 'indiens#search'
resources :indiens
root to: 'indiens#index'
end
