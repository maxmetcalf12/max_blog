# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @articles = Article.published.order(published_at: :desc)
    @product_reviews = ProductReview.published.order(published_at: :desc)
  end
end
