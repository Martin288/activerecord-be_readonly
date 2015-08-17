module BeReadonly
  def self.configure(&block)
    yield Config if block_given?
  end

  module Config
    def self.enable_readonly=(enabled)
      @enable_readonly = !!enabled
    end

    # enable the readonly behaviour in default
    def self.enabled_readonly?
      return @enable_readonly unless @enable_readonly == nil
      true   # default is ture if not set :enable_readonly yet
    end
  end
end
