class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :place

  validates :message, presence: true, length: {minimum: 3}
  validates :rating, presence: true

  RATINGS = {
    'One star': '1_star',
    'Two stars': '2_stars',
    'Three stars': '3_stars',
    'Four stars': '4_stars',
    'Five stars': '5_stars'
  }

  def humanized_rating
    RATINGS.invert[self.rating]
  end 
end
