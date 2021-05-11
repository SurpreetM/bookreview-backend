Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :books do
        resources :reviews
      end
  # We have nested the reviews within books as we only want to be able to render the reviews that are associated with a book, not all reviews.     
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    end
  end
end
