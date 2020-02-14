MIGRATION_CLASS = ActiveRecord::VERSION::MAJOR < 5 ? ActiveRecord::Migration : ActiveRecord::Migration[4.2]
class AddProjects < MIGRATION_CLASS
  def change
    create_table :mosaico_projects do |t|
      t.text :html
      t.text :content
      t.text :metadata
      t.string :template_name
      t.timestamps
    end
  end
end
