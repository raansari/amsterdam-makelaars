class AddNeighborhoodToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :neighborhood, :string
  end
end
