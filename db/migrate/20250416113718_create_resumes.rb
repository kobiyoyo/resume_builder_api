class CreateResumes < ActiveRecord::Migration[5.0]
  def change
    create_table :resumes do |t|
      t.references :user, foreign_key: true
      t.json :personal_info
      t.json :education
      t.json :experience
      t.json :skills
      t.json :projects
      t.json :certifications

      t.timestamps
    end
  end
end
