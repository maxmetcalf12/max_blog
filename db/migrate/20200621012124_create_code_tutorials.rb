class CreateCodeTutorials < ActiveRecord::Migration[6.0]
  def change
    create_table :code_tutorials do |t|
      t.string :name
      t.string :path
      t.datetime :published_at
      t.text :preview

      t.timestamps
    end
    add_index :code_tutorials, :path
  end
end
