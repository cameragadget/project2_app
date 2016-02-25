class Classified < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image_one_url, styles: { medium: "300x300>",
    thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image_one_url,
    content_type: /\Aimage\/.*\Z/
  has_attached_file :image_two_url, styles: { medium: "300x300>",
    thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image_two_url, content_type: /\Aimage\/.*\Z/

end
