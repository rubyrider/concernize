class ConcernizeGenerator < ::Rails::Generators::Base

  source_root File.expand_path('../templates', __FILE__)

  argument :concern_type, :type => :string, required: true
  argument :name, :type => :string
  argument :concern_namespace, :type => :string, optional: true


  def initialize(args, *options)
    super(args, *options)
    concern_module_name
    concern_file_name
  end

  def copy_initializer
    template "concern.erb", "app/#{@concern_type.pluralize}/concerns/#{@concern_file_name}"
  end

  protected

  def concern_file_name
    case @concern_namespace
      when nil, ''
        @concern_file_name = "#{@name}.rb"
      else
        @concern_file_name = "#{@name}_#{@concern_namespace}.rb"
    end
  end

  def concern_module_name
    case @concern_namespace
      when nil, ''
        @concern_module_name = "#{@name.classify}"
      else
        @concern_module_name = "#{@name.classify}#{@concern_namespace.classify}"
    end
  end


end
