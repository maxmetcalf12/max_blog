# frozen_string_literal: true

class ProductReviewsController < ApplicationController
  def index
    @product_reviews = ProductReview.all
  end

  def show
    set_article
  end

  private

  def set_article
    @product_review = ProductReview.find(params[:id])
  end
end
