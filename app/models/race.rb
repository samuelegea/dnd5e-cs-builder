class Race < ApplicationRecord
  enum size: [:tiny, :small, :medium, :large, :huge, :gargantuan]

  has_many :language_speakers, as: :speaker, dependent: :destroy, inverse_of: :speaker
  has_many :languages, through: :language_speakers

  validates_presence_of :name, :description
end
