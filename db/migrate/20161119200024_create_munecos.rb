class CreateMunecos < ActiveRecord::Migration
  def change
    create_table :munecos do |t|
      t.string :name
      t.text :description
      t.decimal :cost
      t.string :picture

      t.timestamps
    end
  end
end
