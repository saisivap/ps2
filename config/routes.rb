Rails.application.routes.draw do
  resources :posts do
    member do
      put "like", to: "posts#upvote"
      put "dislike", to: "posts#downvote"
    end
  end
  # resources :categories
  # resources :items
  get 'project/index'

  devise_for :users,path: '',path_names: { sign_in: 'login', sign_out: 'logout'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'quotation' ,to: 'quotation#quotation'
  get 'site/index'

  # root to:'site#index'
  # root :to => redirect("/login")
  get 'site/ps1'
  get 'site/zero_division_error'
  get 'site/news_page'




  # root 'quotation#quotation'
  get 'quotation', to:'quotation#quotation'
  get 'index', to:'quotation#index'
  get 'export',to: 'quotation#export'
  post 'uploadFile', to:'quotation#uploadFile'
  # get 'about' ,to: 'articles#about'
  post '/quotation', to:'quotation#quotation'
  post 'quotation/quotation'
  get 'sql',to: 'quotation#sql'
  get 'sql1',to: 'quotation#sql1'
  get 'quotation/ps2'

  get 'document',to:'quotation#Document'
  get 'ps4',to:'quotation#ps4'


  # root "project#index" do

  # end
  root "categories#index"
  resources :categories do
    resources :items
    end
  # resources :items do
  #   resources :categories
  # end

end
