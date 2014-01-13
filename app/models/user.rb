class User < ActiveRecord::Base
  has_many :rsvps
  has_many :reservations, through: :rsvps, source: :event
  #source: :event is telling the app to look at the events table but we are calling it
  #reservations
  has_many :events 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploader :pic, PicUploader
end
