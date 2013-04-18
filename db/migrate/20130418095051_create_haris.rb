class CreateHaris < ActiveRecord::Migration
  def change
    create_table :haris do |t|
      t.string :name

      t.timestamps
    end
  end
end
