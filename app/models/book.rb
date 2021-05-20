class Book < ApplicationRecord
  include Workable 

  def detail
    "#{page_count} pages"
  end
end
