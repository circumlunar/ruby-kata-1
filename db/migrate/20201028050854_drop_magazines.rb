class DropMagazines < ActiveRecord::Migration[6.0]
  def change
    drop_table :magazines
    drop_table :authors_magazines
  end
end
