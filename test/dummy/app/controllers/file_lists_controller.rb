class FileListsController < ApplicationController
  load 'file_lister.rb'
  def index
    @items = FileLister::GetFiles.dir('/')
  end
end
