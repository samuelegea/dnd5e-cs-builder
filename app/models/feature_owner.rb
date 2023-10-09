class FeatureOwner < ApplicationRecord
  belongs_to :feature, inverse_of: :feature_owners
  belongs_to :owner, polymorphic: true
end
