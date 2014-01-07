class CreateBooks < ActiveRecord::Migration
  # TODO: add null: false as appropriate and indexes on searchable columns.
  def change
    create_table :books do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.string :image_url
      t.string :isbn
      t.string :author

      t.timestamps
    end
  end
end
