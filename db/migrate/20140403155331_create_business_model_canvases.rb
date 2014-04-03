class CreateBusinessModelCanvases < ActiveRecord::Migration
  def change
    create_table :business_model_canvases do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
