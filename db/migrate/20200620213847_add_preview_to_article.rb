# frozen_string_literal: true

class AddPreviewToArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :preview, :text
  end
end
