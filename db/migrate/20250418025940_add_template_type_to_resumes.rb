class AddTemplateTypeToResumes < ActiveRecord::Migration[5.0]
  def change
    add_column :resumes, :template_type, :string, default: "modern"
  end
end
