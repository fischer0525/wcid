class Event < ApplicationRecord
  validates :event_date, presence: true
  validates :event_name, presence: true
  validates :event_time, presence: true
  validates :address, presence: true, uniqueness: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true, length: { is: 5 }

  belongs_to :user

  def self.search(term)
    if term
      where('lower(event_name) LIKE ? OR lower(address) LIKE ? OR lower(city) LIKE ? OR zip LIKE ?', "%#{term.downcase}%", "%#{term.downcase}%", "%#{term.downcase}%", "%#{term}%")
    else
      order('id DESC')
    end
  end
end
