class Photo < ActiveRecord::Base

  attr_accessible :data, :order, :logo_overlay

  has_attached_file :data, :styles => {:large => '1000x733!', :thumbnail => '256x256#'}, :default_style => :large

  validates_attachment_presence :data
  # validates_attachment_size :data, :less_than => 5.megabytes  
  # validates_attachment_content_type :data, :content_type => ['image/jpeg', 'image/png']  
end
