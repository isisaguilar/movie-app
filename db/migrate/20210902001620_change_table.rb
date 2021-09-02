class ChangeTable < ActiveRecord::Migration[6.1]
  def change
    change_column :movies, :english, 'boolean USING CAST(english AS boolean)'
  end
end
