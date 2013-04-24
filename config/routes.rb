Conductor::Engine.routes.draw do
	resources :annotations, :routes, :scaffolds, :files, :statistics
	match '/files/show', to: 'files#show'
end
