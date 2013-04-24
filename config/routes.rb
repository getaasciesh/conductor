Conductor::Engine.routes.draw do
	resources :annotations, :routes, :scaffolds, :files, :statistics
	match '/files/:id/:show_path', to: 'files#show'
end
