Rails.application.routes.draw do
  get 'welcome/index'

  get '/inicio', to: 'welcome#index' # Acessa o welcome/index também em => http://localhost:3000/inicio

  resources :coins
  # Rota raiz criada para redirecionar inicialmente para welcome/index
  root to: 'welcome#index' # => get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
