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
      @enable_readonly || true
    end
  end
end
