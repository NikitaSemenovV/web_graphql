Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  get "/graphql", to: "graphql#execute"
  get 'resort/index'
  get 'resort/show'


  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
