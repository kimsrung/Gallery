class Photo < ActiveRecord::Base
	has_attached_file :image, :styles => {
	 :medium => "300x300>", :thumb => "100x100>", :large => "500>" },
	 :default_url => "/images/:style/missing.png”,
	path: “/users/images/:style/:id.:extendsion"

	validates_attachment :image, :presence => true,
  						 :content_type => { :content_type => ["image/jpeg","image/png"] },
  						 :size => { :in => 0..10024.kilobytes }
end
