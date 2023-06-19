class Issue < ApplicationRecord
  has_many :labels
  belongs_to :user
end
