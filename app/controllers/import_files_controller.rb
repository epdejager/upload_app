class ImportFilesController < ApplicationController
  def new
  	@import_file = ImportFile.new
  end

def create
    @import_file = ImportFile.new(params[:import_file])
    if @import_file.save
      redirect_to @import_file
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render :action => "new"
    end
  end  

  def show
    @import_file = ImportFile.find(params[:id])
  end

  def index
  end
end
