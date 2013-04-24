module Conductor
	class Files
		attr_accessor :path
		def initialize(path)
			@path = path
		end

		def all_files
			@files=Dir.entries(@path).keep_if{|f| (f != '.')&&(f!='..')}.map { |file|
							  full_path =  @path+"/"+file
			                  
			                  if !File.directory? full_path
			                    file_with_type= [file, full_path]
			                  end
			                  file_with_type}.keep_if{|a| !a.blank?}.sort_by{|name,path| name}

		end
		def all_folders
			@files=Dir.entries(@path).keep_if{|f| (f != '.')&&(f!='..')}.map { |file|
							  full_path =  @path+"/"+file
			                  
			                  if File.directory? full_path
			                    file_with_type= [file, full_path]
			                  end
			                  file_with_type}.keep_if{|a| !a.blank?}.sort_by{|name,path| name}

		end
		def track_back_paths
			track_back_paths= Array.new
	    	root= Rails.root.to_s
	    	track_back_paths << [root, '/']
	    	
	    	root_escaped_path = @path.slice!(/#{root}/,0)
	    	path_arrayfied= root_escaped_path.split('/')
	    	p= root
	    	path_arrayfied.each do |entry|
    			track_back_paths << [p+'/'+entry, entry]
    		p = p+'/'+entry
    	end

    	def read_file
    		if !File.directory? (@path)

    		end
    	end

    	def update_file

    	end

		end
	end
end