class CreateBooks < ActiveRecord::Migration
  def up
    create_table :books do |t|
      t.string :title
      t.references :author, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
  def down
  	drop_table :books
  end
end
