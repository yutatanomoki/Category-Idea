class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.bigint :id
      t.bagint :category_id
      t.text :body

      t.timestamps
    end
  end
end
