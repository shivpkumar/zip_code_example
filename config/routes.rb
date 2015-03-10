Rails.application.routes.draw do
  root 'zip_code#new'

  get 'new'     => 'zip_code#new'
  post 'check'  => 'zip_code#check'
  get 'success' => 'zip_code#success'
end
