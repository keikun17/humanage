Humanage::Engine.routes.draw do
  root :to => "personnel#index"
  get '/enlist', :to => "personnel#new", :as => "new_personnel"
  
  post '/enlist', :to => "personnel#create", :as => "personnels"
end
