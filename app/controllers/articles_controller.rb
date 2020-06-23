# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    set_article
  end

  private

  def set_article
    @article = Article.friendly.find(params[:id])
  end
end
