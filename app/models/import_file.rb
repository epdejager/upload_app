class ImportFile < ActiveRecord::Base
  attr_accessible :filename, :description
  mount_uploader :filename, ImportFileUploader
end
