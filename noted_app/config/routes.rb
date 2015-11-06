Rails.application.routes.draw do
  devise_for :users

  root 'users#index'

  resources :users
  resources :notes

# MY ROUTES//////////////////////////////////////////////////////////////////////////////////
#                   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        registrations#cancel
#        user_registration POST   /users(.:format)               registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       registrations#new
#   edit_user_registration GET    /users/edit(.:format)          registrations#edit
#                          PATCH  /users(.:format)               registrations#update
#                          PUT    /users(.:format)               registrations#update
#                          DELETE /users(.:format)               registrations#destroy
#                    users GET    /users(.:format)               users#index
#                          POST   /users(.:format)               users#create
#                 new_user GET    /users/new(.:format)           users#new
#                edit_user GET    /users/:id/edit(.:format)      users#edit
#                     user GET    /users/:id(.:format)           users#show
#                          PATCH  /users/:id(.:format)           users#update
#                          PUT    /users/:id(.:format)           users#update
#                          DELETE /users/:id(.:format)           users#destroy
#                    notes GET    /notes(.:format)               notes#index
#                          POST   /notes(.:format)               notes#create
#                 new_note GET    /notes/new(.:format)           notes#new
#                edit_note GET    /notes/:id/edit(.:format)      notes#edit
#                     note GET    /notes/:id(.:format)           notes#show
#                          PATCH  /notes/:id(.:format)           notes#update
#                          PUT    /notes/:id(.:format)           notes#update
#                          DELETE /notes/:id(.:format)           notes#destroy
end
