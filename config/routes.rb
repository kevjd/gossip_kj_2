Rails.application.routes.draw do
  get '/', to: 'root#index'
  get 'welcome/:first_name', to:'welcome#show'
  get '/contact', to: 'contact#contact_us'
  get '/team', to: 'team#presentation'
  get '/gossip', to: 'gossip#index'
end

