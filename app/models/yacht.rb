class Yacht < ApplicationRecord
  belongs_to :user
  has_many :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
  has_many_attached :photos

  def self.available_for(start_date, end_date)
    bookings = Booking.where(start_date: start_date..end_date).or(Booking.where(end_date: start_date..end_date))
    where.not(bookings: bookings)
  end
end
