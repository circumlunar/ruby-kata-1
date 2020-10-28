class DropBooks < ActiveRecord::Migration[6.0]
  def change
    drop_table :books
    drop_table :authors_books
  end
end
