class TemplateGenerator < Greg::Generator
  def initialize(**options)
    super
    @output_directory = Pathname(Greg.templates_dir + "/" + name).expand_path
  end
  
  def files
    [
     Greg::FromTemplate.new("#{name}_generator.rb", "templates/generator.erb"),
     Greg::DirTemplate.new("templates")
    ]
  end
end
