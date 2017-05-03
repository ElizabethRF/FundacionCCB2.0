class Create < ActiveRecord::Migration[5.0]
  def change
      create_table :users do |t|
          t.string :name
          t.string :mail
          t.string :telephone_number
          t.string :last_name
          t.string :second_last_name
          t.string :username
          t.string  :password_digest
          t.boolean :admin
          t.timestamps 
      end 
      
      create_table :projects do |t|
          t.string :area
          t.decimal :amount
          t.datetime :starting
          t.datetime   :ending
          t.text :description
          t.text :location
          t.integer :volunteers
          t.string :problem
          t.integer :serves_num_people
          t.text :title
          t.references :user, foreign_key: true
          t.timestamps
      end 
   
      create_table :answers do |t|
         t.text :answer 
         t.integer :value
         t.integer :question_id
      end 
 
      
      create_table :questions do |t|
          t.string :question
          t.integer :value
          t.string :area
          t.text :phase
          t.timestamps
      end    
      
      create_join_table :projects, :answers do |t|
        t.index :project_id
        t.index :answer_id
        t.timestamps
      end
  end
end
