class Patient < ActiveRecord::Base
  validates :patientId, presence: true, length: {minimum: 9, maximum: 9}, numericality: { only_integer: true }
  validates :fullName, presence: true , format: { with: /[a-zA-Z]+\z/, message: "only allows letters" } 

end
