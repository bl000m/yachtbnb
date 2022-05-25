class AddVoyagerToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :voyager, :integer
  end
end
