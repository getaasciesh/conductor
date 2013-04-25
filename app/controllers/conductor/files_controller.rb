require_dependency "conductor/application_controller"
require "conductor/files"

module Conductor
	class FilesController < ApplicationController

		def index
			@path = params[:folder_path]|| Rails.root.to_s
			directory = Conductor::Files.new(@path)

				@files= directory.all_files
				@folders= directory.all_folders
				@track_paths= directory.track_back_paths
		end

		def show
			@path = params[:path]
			directory = Conductor::Files.new(@path)
			@file = directory.read_file
			@track_paths= directory.track_back_paths
		end

		def edit
		end

		def update
			file= Conductor::Files.new(params[:file][:path])
			if file.update_file(params[:file][:raw])
				flash[:notice]= "Successfully updated."
			else
				flash[:error]= "Could not update"
			end
			redirect_to files_show_path(path: params[:file][:path])
		end


	end
end
