class RenameTypeToKind < ActiveRecord::Migration[6.0]
  def change
    rename_column :locations, :type, :kind
  end
end
