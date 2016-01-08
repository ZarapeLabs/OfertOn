Rails.application.routes.draw do
  devise_for :companies, controllers: {registrations: "registrations"}
  resources :companies do
    member do
      get :incomplete
      put :complete
    end
  end
  namespace :admin do
    DashboardManifest::DASHBOARDS.each do |dashboard_resource|
      resources dashboard_resource
    end
    root controller: DashboardManifest::ROOT_DASHBOARD, action: :index
  end
  root to: 'visitors#index'
  devise_for :users
  resources :users
  get 'funcionamiento' => "visitors#operation"
  get 'empresas' => "visitors#for_companies"
end
