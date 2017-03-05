class Actor < ActiveRecord::Base
  validates :name, presence: true
  validates :bio, presence: true
  validates :birth_date, presence: true
  validates :birth_place, presence: true
  validates :image_url, presence: true
end
