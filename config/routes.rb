Rails.application.routes.draw do
  get '/users/:id/current_checkouts', to: 'users#current_checkouts'
  get '/users/:id/all_checkouts', to: 'users#all_checkouts'
  get '/users/:id/checkouts_by_book_name', to: 'users#checkouts_by_book_name'
  get '/users/:id/overdue_checkouts', to: 'users#overdue_checkouts'
  get '/media/search_by_name/:name', to: 'media#search_by_name'
  get '/media/search_by_id/:id', to: 'media#search_by_name'
  get '/media_copies/search_by_id/:id', to: 'media_copies#search_by_id'
  get '/checkouts/search_by_user_id/:user_id', to: 'checkouts#search_by_user_id'
  post '/checkouts', to: 'checkouts#create'
end
