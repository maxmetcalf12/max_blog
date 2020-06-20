class CreateProductReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :product_reviews do |t|
      t.string :name
      t.string :url
      t.text :preview
      t.datetime :published_at
      t.decimal :rating
      t.string :path

      t.timestamps
    end
    add_index :product_reviews, :path
  end
end
