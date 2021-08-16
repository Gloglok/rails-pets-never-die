Rails.application.routes.draw do
  root to: 'pages#home'
  ressources :stuffed_animals
end
