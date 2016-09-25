class AddAttachmentImageToSingers < ActiveRecord::Migration
  def self.up
    change_table :singers do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :singers, :image
  end
end
