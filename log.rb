# require 'singleton'

class Log
  # include Singleton
  @@instance = Log.new

  def self.instance
    @@instance
  end

  private_class_method :new
end

# log1 = Log.new
# log2 = Log.new

# p log1
# p log2

log = Log.instance
p log

log2 = Log.instance
p log2

