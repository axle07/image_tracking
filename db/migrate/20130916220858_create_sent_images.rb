class CreateSentImages < ActiveRecord::Migration
  def change
    create_table :sent_images do |t|
      t.string :image_name
      t.string :date_sent
      t.integer :quantity
      t.string :recipient
      t.string :size_of_image

      t.timestamps
    end
  end
end
