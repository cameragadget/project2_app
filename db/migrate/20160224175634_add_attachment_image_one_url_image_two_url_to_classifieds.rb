class AddAttachmentImageOneUrlImageTwoUrlToClassifieds < ActiveRecord::Migration
  def self.up
    change_table :classifieds do |t|
      t.attachment :image_one_url
      t.attachment :image_two_url
    end
  end

  def self.down
    remove_attachment :classifieds, :image_one_url
    remove_attachment :classifieds, :image_two_url
  end
end
