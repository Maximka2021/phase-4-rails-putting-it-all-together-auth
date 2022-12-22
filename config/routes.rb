Rails.application.routes.draw do
  resource :recipes
  post '/login', to: 'recipes#create'
end
