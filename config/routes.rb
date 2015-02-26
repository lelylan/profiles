Profile::Application.routes.draw do

  get :me, to: 'users#show', defaults: { format: 'json' }

end
