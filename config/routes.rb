Conductor::Engine.routes.draw do
	resources :annotations, :routes, :scaffolds, :files, :statistics

	match '/files/show', to: 'files#show'
	match '/files/update', to: 'files#update', via: :put
	root to: 'files#index'
end
