class Todo < ApplicationRecord
  before_save :default_values

  def default_values
    self.finished = nil
    self.done = false
  end
end
