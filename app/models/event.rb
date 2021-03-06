class Event < ActiveRecord::Base
  validates :date, :time, :description, presence: true
  belongs_to :user
  has_many :rsvps
  has_many :users, through: :rsvps
  #Check in the rsvp table for my event id and show me all the users that are 
  #associated to my event id

end
