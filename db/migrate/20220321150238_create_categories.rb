class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.integer :type, default: 0
      t.text :description

      t.timestamps
    end
  end
end
