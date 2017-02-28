class AddAttachmentCImageToCards < ActiveRecord::Migration
  def self.up
    change_table :cards do |t|
      t.attachment :c_image
    end
  end

  def self.down
    remove_attachment :cards, :c_image
  end
end
