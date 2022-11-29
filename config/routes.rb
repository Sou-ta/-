Rails.application.routes.draw do

  root to: 'homes#top'

  namespace :admin do
    resources :users , only: [:index, :show, :edit, :update, :destroy]
    resources :schedules, only: [:new, :index, :create, :show, :edit, :update, :destroy]
    resources :apply_paids, only: [:index, :show, :update]
  end
  namespace :public do
    resources :schedules, only: [:index, :show]
    resources :apply_paids, only: [:new, :index, :create, :show, :destroy]
    resources :users , only: [:index, :show, :edit, :update, :destroy]
  end
devise_for :users, controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}

devise_for :admin, controllers: {
  sessions: "admin/sessions"
}
end
