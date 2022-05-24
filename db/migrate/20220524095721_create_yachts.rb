class CreateYachts < ActiveRecord::Migration[6.1]
  def change
    create_table :yachts do |t|
      t.string :name
      t.string :address
      t.integer :price
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
