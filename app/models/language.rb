class Language < ApplicationRecord
  has_many :language_speakers, dependent: :destroy, inverse_of: :language
end
