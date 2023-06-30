Rails.application.routes.draw do
  resources :movies, only: [:index, :show] do
    member do
      get 'summary', to: 'movies#summary'
    end
  end
end
