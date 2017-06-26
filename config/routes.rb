Rails.application.routes.draw do
  mount_devise_token_auth_for 'V1::User', at: 'v1/auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  api_version(:module => "V1", :path => {:value => "v1"}) do

    resources :contacts do
      resource :social_kind, only: [:show]
      resource :social_kind, only: [:show], path: 'relationships/social_kind', as: :social_kind_self
    end

    resources :social_kinds, only: [:index, :show]
  end
end
