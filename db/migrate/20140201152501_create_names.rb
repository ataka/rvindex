class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :last
      t.string :first
      t.string :suffix
      t.timestamps
    end
  end
end
