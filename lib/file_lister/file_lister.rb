module FileLister
  class GetFiles
    def self.dir(path_param)
       path = path_param.gsub(%r{^\/?f\/?}, '')
      full_path = "#{path}/*"

      res = Dir[full_path].map do |full_filename|
        is_dir = File.directory?(full_filename)
        {
          filename: full_filename,
          is_dir: is_dir,
          sort_key: "#{is_dir ? '0' : '1'}#{full_filename}"
        }
      end
      res.reject { |x| x[:filename].empty? }
    end

    def self.open_file(path)
      CodeRay.encode(
        File.read(path),
          :ruby,
          :html,
          :line_numbers => :inline,
          :hint => :info,
          :css => :style,
          :wrap => :div
        )
    end
  end
end
