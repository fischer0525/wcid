class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #after_create :send_email

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true, uniqueness: true
  validates :email, uniqueness: true, format: { with: /\A((\w+)|(\.))+\@[a-z]+\.[a-z]{3}\z/ }
  validates :password, presence: true, on: :create
  validates :password_confirmation, presence: true, on: :create
  validates :admin, inclusion: { in: [true, false] }
  validates :contact_number, presence: true, uniqueness: true, format: { with: /\A\(?\d{3}\)?\-?\d{3}\-?\d{4}\z/ }
  has_many :events, dependent: :destroy

  mount_uploader :profile_photo, ProfilePhotoUploader

  def admin?
    admin == true
  end

  # def send_email
  #   UserMailer.new_user(self).deliver
  # end
end
