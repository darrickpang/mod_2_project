class CreatePictureTags < ActiveRecord::Migration[6.0]
  def change
    create_table :picture_tags do |t|
      t.bigint :picture_id
      t.bigint :tag_id
      t.timestamps
    end
  end
end
