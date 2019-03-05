class CreateChannels < ActiveRecord::Migration[5.2]
  def change
    create_table :channels do |t|
      t.string :name
      t.string :slug
      t.string :url

      t.timestamps
    end
    add_index :channels, :slug, unique: true
  end
end
