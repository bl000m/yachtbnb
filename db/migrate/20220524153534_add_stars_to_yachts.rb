class AddStarsToYachts < ActiveRecord::Migration[6.1]
  def change
    add_column :yachts, :stars, :integer
  end
end
