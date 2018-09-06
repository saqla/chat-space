Rails.application.routes.draw do
  root 'massages#index'
  get 'massages'    =>    'massages#index'
end
