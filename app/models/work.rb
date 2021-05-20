class Work < ApplicationRecord
  belongs_to :user
  delegated_type :workable, types: %w[Book Movie]
  delegate :detail, to: :workable

  class << self
    def create_with_book(user:, title:, published_year:, page_count:)
      create!(user: user, workable: Book.new(page_count: page_count), title: title, published_year: published_year)
    end

    def create_with_movie(user:, title:, published_year:, running_time:)
      create!(user: user, workable: Movie.new(running_time: running_time), title: title, published_year: published_year)
    end
  end

  def description
    "#{title} (#{published_year}) #{detail}"
  end
end
