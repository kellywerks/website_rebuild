Lhtp::Application.routes.draw do
  match('lessons', {:via => :get, :to => 'lessons#index'})
  match('lessons/new', {:via => :get, :to => 'lessons#new'})
  match('lessons/:id', {:via => :get, :to => 'lessons#show'})
  match('lessons', {:via => :post, :to => 'lessons#create'})
  match('lessons/:id', {:via => :delete, :to => 'lessons#delete'})
  match('lessons/:id/edit', {:via => :get, :to => 'lessons#edit'})
  match('lessons/:id', {:via => [:patch, :put], :to => 'lessons#update'})

  match('sections/:id', {:via => :get, :to => 'sections#show'})
  #match('sections', {:via => :get, :to => 'sections#new'})
  match('sections', {:via => :post, :to => 'sections#create'})

end
