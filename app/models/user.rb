class User < ApplicationRecord
  belongs_to :survey, optional: true
  has_many :answers
  
  validates_presence_of :email
  validates_uniqueness_of :email
end