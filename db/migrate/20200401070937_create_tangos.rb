class CreateTangos < ActiveRecord::Migration[5.2]
  def change
    create_table :tangos do |t|

      t.timestamps
    end
  end
end
