class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :icon
      t.references :author, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end

    add_reference :payments, :category, foreign_key: true
  end
end
