class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.string :image_url
      t.string :title
      t.bigint :user_id
      t.timestamps
    end
  end
end
