class AddVoyagerToYachts < ActiveRecord::Migration[6.1]
  def change
    add_column :yachts, :voyager, :integer
  end
end
