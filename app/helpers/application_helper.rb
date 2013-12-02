module ApplicationHelper
	def wicked_pdf_image_tag(img, options={})
	    if img[0] == "/"
	      new_image = img.slice(1..-1)
	      image_tag "file://#{Rails.root.join('public', new_image)}", options
	    else
	      image_tag "file://#{Rails.root.join('public', 'images', img)}", options
    	end
  	end
end
