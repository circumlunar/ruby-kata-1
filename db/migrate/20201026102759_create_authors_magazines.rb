class CreateAuthorsMagazines < ActiveRecord::Migration[6.0]
  def change
    create_table :authors_magazines do |t|
      t.integer :author_id
      t.integer :magazine_id

      t.timestamps
    end
  end
end
