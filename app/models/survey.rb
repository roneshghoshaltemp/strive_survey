class Survey < ApplicationRecord
  CURRENTLY_USED_SURVEY = Survey.first
  
  has_many :users
  has_many :questions
end