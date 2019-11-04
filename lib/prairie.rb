require "prairie/version"

module Prairie
  # class Error < StandardError; end

  def self.run
    print 'Do you want to create ./github/ISSUE_TEMPLATE.md (y/n)?'
    input = gets.chomp
    if input == 'y'
      Dir.mkdir("./.github")
      FileUtils.touch("./.github/ISSUE_TEMPLATES.md")
    end
  end
end
