Rails.application.routes.draw do
  get 'doses/new'
  # get 'cocktails/index'
  # get 'cocktails/show'
  # get 'cocktails/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: [:new, :create, :destroy]
  end
    resources :doses, only: :destroy
end

# doses_new GET    /doses/new(.:format)                                doses#new
# cocktail_doses POST   /cocktails/:cocktail_id/doses(.:format)        doses#create
# new_cocktail_dose GET    /cocktails/:cocktail_id/doses/new(.:format) doses#new
# cocktail_dose DELETE /cocktails/:cocktail_id/doses/:id(.:format)     doses#destroy
# cocktails GET    /cocktails(.:format)                                cocktails#index
# POST   /cocktails(.:format)                                          cocktails#create
# new_cocktail GET    /cocktails/new(.:format)                         cocktails#new
# cocktail GET    /cocktails/:id(.:format)                             cocktails#show
