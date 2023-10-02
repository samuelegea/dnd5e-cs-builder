class LanguageSpeaker < ApplicationRecord
  belongs_to :language, inverse_of: :language_speakers
  belongs_to :speaker, polymorphic: true
end