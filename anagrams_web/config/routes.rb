Rails.application.routes.draw do
  
 root 'words#home'

 post '/anagrams' => 'words#new_word'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
