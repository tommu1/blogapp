class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :name, null: false, default: ""

      t.timestamps
    end
  end
end
