class ChangeColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :categories, :type, :title
  end
end
