class Report < ActiveRecord::Base
  validates :background, :description, :conclusion,  :presence => true
end
