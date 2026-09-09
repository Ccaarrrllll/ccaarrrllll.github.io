# Ruby 3.3 compatibility fix
# Liquid 4.0.3 uses String#tainted? which was removed in Ruby 3.2
class String
  unless instance_methods.include?(:tainted?)
    def tainted?
      false
    end
  end
end
