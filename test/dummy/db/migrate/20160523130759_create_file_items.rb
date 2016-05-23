class CreateFileItems < ActiveRecord::Migration[5.0]
  def change
    create_table :file_items do |t|
      t.string :filename
      t.boolean :is_dir
      t.string :sort_key

      t.timestamps
    end
  end
end
