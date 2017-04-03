class City < ApplicationRecord
  has_many :weathers, dependent: :destroy
  validates_presence_of :name

  def self.daily_weather(id)
    joins(:weathers).where(id: id, weathers: { created_at: (Time.current.at_beginning_of_day..Time.current.at_end_of_day) }).last
  end
end
