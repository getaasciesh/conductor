require 'rails/source_annotation_extractor'
require_dependency "conductor/application_controller"

module Conductor
  class AnnotationsController < ApplicationController
			
    def index
      dirs = %w(app config lib script test)
      dirs_paths = dirs.map {|dir| File.join(Rails.root, dir)}
  	
      @todo_notes = SourceAnnotationExtractor.new("TODO").find(dirs_paths)
      @fixme_notes = SourceAnnotationExtractor.new("FIXME").find(dirs_paths)
      @optimize_notes = SourceAnnotationExtractor.new("OPTIMIZE").find(dirs_paths)
    end
  end
end
