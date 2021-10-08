Rails.application.routes.draw do
  get '/users/current_checkouts', to: 'users#current_checkouts'
  get '/users/all_checkouts', to: 'users#current_checkouts'
  get '/users/checkouts_by_book_name', to: 'users#checkouts_by_book_name'
  get '/users/overdue_checkouts', to: 'users#overdue_checkouts'
  get '/media/search_by_name', to: 'media#search_by_name'
  get '/media/search_by_id', to: 'media#search_by_name'
  get '/media_copies/search_by_id', to: 'media#search_by_id'
  get '/checkouts/search_by_user_id', to: 'checkouts#search_by_user_id'
end
