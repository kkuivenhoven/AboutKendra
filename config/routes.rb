Rails.application.routes.draw do
  root controller: :basic, action: :home 

  get '/google0d522795c8df8607.html',
    to: proc { |env| [200, {}, ["google-site-verification: google0d522795c8df8607.html"]] }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
