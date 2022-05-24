class Yacht < ApplicationRecord
  belongs_to :user
  has_many :bookings

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
