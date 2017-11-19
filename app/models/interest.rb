class Interest < ApplicationRecord
  TOPICS = ["Cars", "Flowers", "Animals", "Gadget", "Cloths", "Food", "Books", "Photography", "Music", "Movies", "Dance", "Singing", "Places", "Games", "Politics", "Business", "Ornaments", "Racing", "Cooking", "Blogs", "Other" ]
  belongs_to :user
  validates :topic, presence: { if: -> { other_topic.blank? } }
  validates :other_topic, presence: { if: -> { topic.blank? } }
  validates_presence_of :description
end
