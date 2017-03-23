class Event < ApplicationRecord
  validates :event_date, presence: true
  validates :event_name, presence: true
  validates :event_time, presence: true
  validates :address, presence: true, uniqueness: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true, length: { is: 5 }
  validates :phone_number, presence: true, uniqueness: true, format: { with: /\A\(?\d{3}\)?\-?\d{3}\-?\d{4}\z/ }

  belongs_to :user

  def self.search(term)
    if term
      where('lower(event_name) LIKE ? OR lower(address) LIKE ? OR lower(city) LIKE ? OR zip LIKE ?', "%#{term.downcase}%", "%#{term.downcase.insert(-2, "'")}%", "%#{term.downcase.insert(1, "'")}%", "%#{term.downcase}%", "%#{term.downcase}%", "%#{term}%")
    else
      order('id DESC')
    end
  end
end
