module Spree
  class Contact < Spree::Base
  has_one :address
  has_attached_file :contactimage, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :contactimage, :content_type => /\Aimage\/.*\Z/
end
end