class Singer < ApplicationRecord
	

	has_attached_file :image, styles: { large: "300x400#", medium: "250x300#"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
