# == Schema Information
#
# Table name: art_galleries
#
#  id       :integer          not null, primary key
#  name     :string(255)
#  location :string(255)
#  avatar   :text
#

class ArtGallery < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
end
