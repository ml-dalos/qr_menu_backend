Rails.application.routes.draw do
  scope "/api" do
    namespace :private do
      namespace :v1 do
      end
    end

    namespace :public do
      namespace :v1 do
        resources :clients, only: :index
      end
    end
  end
end
