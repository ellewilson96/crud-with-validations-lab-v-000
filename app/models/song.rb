class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :released, inclusion: {in: %w(true false)}
  if :released.valid? = true 
  validates :release_year, presence: true 
  else 
  validates :release_year, presence: false 
  end 

end
