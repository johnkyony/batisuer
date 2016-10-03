Rails.application.routes.draw do


  resources :streams
  resources :directions
  get 'search_results/index'

  resources :receipts
  get 'account_balance/index'

  get 'account_balance/show'


  resources :account_balance

  resources :students do 
    resources :account_balance
    resources :accounts
    resources :receipts
  end

  resources :parents do   
    resources :students
  end
  resources :directions do 
    resources :grades
  end
  resources :grades do 
    resources :streams
  end
  resources :grades do
    resources :fees 
  end
  
  resources :accounts
  resources :fees
  resources :grades
  resources :students
  resources :parents
  devise_for :users
  resources :users
  root to: 'students#index'
end
