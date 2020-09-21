class CreateBookReadingLists < ActiveRecord::Migration[6.0]
  def change
    create_table :book_reading_lists do |t|
      t.belongs_to :book
      t.belongs_to :reading_list
      t.timestamps
    end
  end
end
