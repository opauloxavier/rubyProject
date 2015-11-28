class Album < ActiveRecord::Base
  before_save { self.name = name.humanize }
  validates :name,  presence: true, length: { maximum: 80 }, uniqueness: {case_sensitive: false}
  validates :ano, presence:true, length: {minimum: 4, maximum: 4}, numericality: { only_integer: true, greater_than_or_equal_to: 1900, less_than_or_equal_to: Date.today.year }
  has_one :artist
end
