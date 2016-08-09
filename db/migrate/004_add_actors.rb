class AddActors < ActiveRecord::Migration

def change
    create_table :actors do |t|
      #primary key of :id is created for us!
      t.string :first_name, :last_name
    end
  end


end
