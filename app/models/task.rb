class CreateTasks < ActiveRecord::Mgration
    def change
        create_table :task do
            t.string :title, 
            t.text :description
            t.boolean :completed, default: false
 t.timestamps
        end
    end
end