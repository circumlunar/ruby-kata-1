class CreateEditions < ActiveRecord::Migration[6.0]
  def change
    create_table :editions do |t|
      t.integer :author_id
      t.integer :edition_id

      t.timestamps
    end
  end
end
