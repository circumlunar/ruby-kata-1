class CreateEditions < ActiveRecord::Migration[6.0]
  def change
    create_table :editions do |t|
      t.string :title
      t.string :isbn
      t.string :edition_type
      t.text :description
      t.datetime :published_at

      t.timestamps
    end
  end
end
