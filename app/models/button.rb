class Button < ActiveRecord::Base
  attr_accessible :background, :border, :borderadius, :bordercolor, :color, :link, :padding, :text, :user_id
  validates_presence_of :background, :border, :color, :text
  belongs_to :user

end
