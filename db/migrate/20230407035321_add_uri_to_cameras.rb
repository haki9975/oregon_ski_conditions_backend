class AddUriToCameras < ActiveRecord::Migration[7.0]
  def change
    add_column :cameras, :uri, :string
  end
end
