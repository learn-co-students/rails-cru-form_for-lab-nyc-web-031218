class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      add_foreign_key :artists, :genres

      t.timestamps null: false
    end
  end
end
