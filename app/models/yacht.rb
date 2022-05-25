class Yacht < ApplicationRecord
  belongs_to :user
  has_many :bookings
  # geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def self.search_by_rate(search)
    if search
      search_rate = search.to_i
      if self.where({stars: 0..search_rate})
        self.where({stars: 0..search_rate}).sort_by{|yacht| yacht.stars}
      else
        Yacht.all
      end
    else
      Yacht.all
    end
  end
end
