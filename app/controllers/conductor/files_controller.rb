require_dependency "conductor/application_controller"
require "conductor/files"

module Conductor
	class FilesController < ApplicationController

		def index
			@root = params[:folder_path]|| Rails.root.to_s
			directory = Conductor::Files.new(@root)

				@files= directory.all_files
				@folders= directory.all_folders
				@track_paths= directory.track_back_paths
		end

		def show
			@root = params[:path]
			directory = Conductor::Files.new(@root)
			@file = directory.read_file
			@track_paths= directory.track_back_paths
		end

		def edit
		end

		def update
		end


	end
end
