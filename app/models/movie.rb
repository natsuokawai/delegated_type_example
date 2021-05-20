class Movie < ApplicationRecord
  include Workable

  def detail
    "#{running_time} minutes"
  end
end
