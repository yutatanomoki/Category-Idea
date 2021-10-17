class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.bigint :id
      t.bigint :category_id
      t.text :body

      t.timestamps
    end
  end
end
