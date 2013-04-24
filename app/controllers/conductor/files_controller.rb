require_dependency "conductor/application_controller"
require "conductor/files"

module Conductor
  class FilesController < ApplicationController
  	def index
  	  @root = params[:folder_path]|| Rails.root.to_s
  	  render 'show' if params[:file_path] 
  	  directory = Conductor::Files.new(@root)
      @files = directory.all_files
      @folders= directory.all_folders
    end
    
    def show
    end

    def edit
    end

    def update
    end

  end
end
