Rails.application.routes.draw do
    # --- routes for about_us_controller ---
    get '/contact', to: 'about_us#contact'
    get '/team', to: 'about_us#team'

    # --- Routes for gossip_controller ---
    get '/', to: 'gossip#home'
    get '/welcome/:user', to: 'gossip#welcome', as: 'welcome'
    get '/gossip/:id', to: 'gossip#show_gossip', as: 'gossip'

    # --- Routes for user controller ---
    get '/user/:id', to: 'user#show_user', as: 'user'
end

