class Sport < ApplicationRecord
  has_many :events

  def sport
    self.name
  end
end
