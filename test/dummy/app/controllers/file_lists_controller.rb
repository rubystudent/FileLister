class FileListsController < ApplicationController
  load 'file_lister.rb'
  def index
    params['filepath'] = '/' unless params['filepath']
    @file_list = FileLister::GetFiles.dir params['filepath']
    @current_dir = params['filepath'].gsub(%r{^\/?f\/?}, '')
    end
end
