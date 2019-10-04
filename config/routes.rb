Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'quotation' ,to: 'quotation#quotation'
  get 'site/index'

  root to:'site#index'

  get 'site/ps1'
  get 'site/zero_division_error'
  get 'site/news_page'




  root 'quotation#quotation'
  get 'quotation', to:'quotation#quotation'
  get 'index', to:'quotation#index'
  get 'export',to: 'quotation#export'
  post 'uploadFile', to:'quotation#uploadFile'
  # get 'about' ,to: 'articles#about'
  post '/', to:'quotation#quotation'
  post 'quotation/quotation'
  get 'sql',to: 'quotation#sql'
  get 'sql1',to: 'quotation#sql1'

end