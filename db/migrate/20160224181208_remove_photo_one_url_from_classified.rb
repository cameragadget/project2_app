class RemovePhotoOneUrlFromClassified < ActiveRecord::Migration
  def change
    remove_column :classifieds, :photo_one_url
    remove_column :classifieds, :photo_two_url
  end
end
