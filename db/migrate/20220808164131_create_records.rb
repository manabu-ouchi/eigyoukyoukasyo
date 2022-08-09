class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.integer :mendan, null:false
      t.integer :fulltalk,  null:false
      t.integer :mikomi,  null:false
      t.integer :mikomiorder,  null:false
      t.integer :order,  null:false
      t.integer :payment,  null:false
      t.references :user, foreign_key: true


      t.timestamps
    end
  end
end


