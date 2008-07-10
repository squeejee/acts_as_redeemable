class RedeemableGenerator < Rails::Generator::NamedBase #:nodoc:
  def manifest
    record do |m|
      m.class_collisions class_name
      
      m.template "app/models/model_template.rb", "app/models/#{file_name}.rb"
      
      unless options[:skip_migration]
        m.directory 'db/migrate'
        m.migration_template 'db/migration.rb', 'db/migrate', :assigns => {
          :migration_name => "Create#{class_name.pluralize.gsub(/::/, '')}"
        }, :migration_file_name => "create_#{file_path.gsub(/\//, '_').pluralize}"
      end
      
      m.template "test/fixtures/model.yml", "test/fixtures/#{table_name}.yml"
      m.template "test/unit/model_test.rb", "test/unit/#{file_name}.rb"
      
    end
  end
end