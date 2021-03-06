class Listing < ActiveRecord::Base
  belongs_to :host, :class_name => "User"
  has_many :reservations
  has_many :guests, :class_name => "User"
  has_many :reviews, through: :reservations
end
