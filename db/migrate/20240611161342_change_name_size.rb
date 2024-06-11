class ChangeNameSize < ActiveRecord::Migration[7.1]
  def change
    change_column :cars, :name, :string, limit:150
  end
end
