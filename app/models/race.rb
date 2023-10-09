class Race < ApplicationRecord
  enum size: [:tiny, :small, :medium, :large, :huge, :gargantuan]

  has_many :language_speakers, as: :speaker, dependent: :destroy, inverse_of: :speaker
  has_many :languages, through: :language_speakers
  has_many :features, as: :owner, dependent: :destroy

  validates_presence_of :name, :description
end
