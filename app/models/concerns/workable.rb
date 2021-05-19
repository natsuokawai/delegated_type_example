module Workable
  extend ActiveSupport::Concern

  included do
    has_one :work, as: :workable, touch: true
  end
end
