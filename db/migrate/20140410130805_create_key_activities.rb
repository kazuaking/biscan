class CreateKeyActivities < ActiveRecord::Migration
  def change
    create_table :key_activities do |t|
      t.references :business_model_canvase, index: true
      t.string :name
      t.text :description
      t.integer :updated_by

      t.timestamps
    end
  end
end
