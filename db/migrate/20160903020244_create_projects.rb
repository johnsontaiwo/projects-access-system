class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :general_contractor
      t.string :project_type
      t.string :project_site
      t.text :contract_number
      t.text :solicitation_number
      t.text :contract_amount
      t.text :start_date
      t.text :substantial_completion_date
      t.text :final_completion_date
    end
  end
end
