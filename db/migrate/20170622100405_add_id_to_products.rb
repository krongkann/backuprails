class AddIdToProducts < ActiveRecord::Migration[5.1]
  def change
    

    create_table :employee_name1 do |t|
        t.integer :id_card,:foreien_key
        t.string  :name

        t.timestamps
      end
  end
end
