class Article < ActiveRecord::Base

  validates :title, presence: true, length: {minimum: 3, maximum: 50} #required variable
  #remember to close de console and start again, to refresh (if you are doing it for the first time)]
  validates :description, presence: true, length: {minimum: 3, maximum: 50}

end