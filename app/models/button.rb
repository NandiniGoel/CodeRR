class Button < ActiveRecord::Base
  attr_accessible :background, :border, :borderadius, :bordercolor, :color, :link, :padding, :text
  validates_the_presence_of :background, :border, :color, :text
end
