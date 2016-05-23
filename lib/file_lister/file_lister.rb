module FileLister
  class GetFiles

    def self.dir(path_param)
      path=path_param
      folders = []
      files = []
      Dir.entries(path).each do |name|
       # puts name
        full_path = File.join(path,name)
        if File.directory?(full_path)
          folders.push(name+'/')
        else
          files.push(name)
        end
      #{
      #  filename: name,
      #  is_dir: is_dir,
      #  sort_key: path
      #}
      end
      folders.sort!
      files.sort!
      folders.push(files)

    end
  end
end
