class Feature < ApplicationRecord
  has_many :feature_owners, dependent: :destroy, inverse_of: :feature
  has_many :owners, through: :feature_owners
end
