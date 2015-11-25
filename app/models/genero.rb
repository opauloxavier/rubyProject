class Genero < ActiveRecord::Base
  before_save { self.name = name.humanize }
  validates :name,  presence: true, length: { maximum: 50 }, uniqueness: {case_sensitive: false}
end
