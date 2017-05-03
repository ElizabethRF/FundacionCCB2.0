class AddIdToAnswersProject < ActiveRecord::Migration[5.0]
  def change
      add_column :answers_projects, :id, :primary_key
  end
end
