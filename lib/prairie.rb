require "prairie/version"

module Prairie
  # class Error < StandardError; end

  class Runner
    def self.run
      Dir.mkdir(".github")
    end
  end
end
