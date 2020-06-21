# frozen_string_literal: true

class ProductReviewsController < ApplicationController
  def index
    @product_reviews = ProductReview.all
  end

  def show
    set_product_review
  end

  private

  def set_product_review
    @product_review = ProductReview.find(params[:id])
  end
end
