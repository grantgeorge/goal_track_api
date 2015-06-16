class Goal < ActiveRecord::Base
  belongs_to :user

  has_many :reminders
  has_many :completions

  validates :name, presence: true
end
