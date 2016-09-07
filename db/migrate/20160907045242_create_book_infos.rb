class CreateBookInfos < ActiveRecord::Migration
  def up
    create_table :book_infos do |t|
      t.float :price
      t.date :publish_date
      t.references :book, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
  def down
  	drop_table :book_infos
  end
end
