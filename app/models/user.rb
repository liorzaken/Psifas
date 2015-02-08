class User < ActiveRecord::Base
  validates :userName, :password, :fullName,  :presence => true
  validates :password, :length => { :in => 6..20 }
end
