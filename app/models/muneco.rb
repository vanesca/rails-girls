class Muneco < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end
