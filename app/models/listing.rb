class Listing < ActiveRecord::Base
  validates_presence_of :description
  
end