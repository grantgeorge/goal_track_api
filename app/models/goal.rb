class Goal < ActiveRecord::Base
  belongs_to :user

  has_many :reminders

  validates :name, presence: true
end
