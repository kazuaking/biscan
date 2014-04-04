class CreateCustomerSegments < ActiveRecord::Migration
  def change
    create_table :customer_segments do |t|
      t.references :business_model_canvase, index: true
      t.string :name
      t.text :description
      t.integer :updated_by

      t.timestamps
    end
  end
end
