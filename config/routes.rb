Rails.application.routes.draw do
  namespace :parking_spaces do
    get :available
    post :take
    post :clear_all
  end
end
