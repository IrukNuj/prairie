require "prairie/version"

module Prairie
  class Error < StandardError; end

  ISSUE_TEMPLATE = <<-EOS
    ## Issueのタイトル / Title
    
    ## 問題内容 / What
    
    ## 現状 / Now
    
    ## 問題の詳細 / Details
    
    ## 問題の解決策または理想 / How, ideals

  EOS

  PULL_REQUEST_TEMPLATE = <<-EOS
    ## Issueの番号 / Title

    ## どのように解決したか / How

    ## なぜそのような解決策を取ったのか / Why

  EOS

  COMMIT_MESSAGE_TEMPLATE = <<-EOS
    
    # ==== Emoji ====
    # 🎉  :tada: 初めてのコミット（Initial Commit）
    # 🔖  :bookmark: バージョンタグ（Version Tag）
    # ✨  :sparkles: 新機能（New Feature）
    # 🐛  :bug: バグ修正（Bugfix）
    # ♻️  :recycle: リファクタリング(Refactoring)
    # 📚  :books: ドキュメント（Documentation）
    # 🎨  :art: デザインUI/UX(Accessibility)
    # 🐎  :horse: パフォーマンス（Performance）
    # 🔧  :wrench: ツール（Tooling）
    # 🚨  :rotating_light: テスト（Tests）
    # 💩  :hankey: 非推奨追加（Deprecation）
    # 🗑️  :wastebasket: 削除（Removal）
    # 🚧  :construction: WIP(Work In Progress)

    # This template quoted here (https://gist.github.com/Jung0/56d527ed5d2c783661f7d56c46332308).
  EOS

  def self.run
    puts 'Do you want to create ./github/ISSUE_TEMPLATE.md (y/n)?'
    input = gets.chomp
    if input == 'y'
      Dir.mkdir('./.github') unless FileTest.exist?('./.github')
      FileUtils.touch('./.github/ISSUE_TEMPLATES.md')
      File.open('./.github/ISSUE_TEMPLATES.md', 'w') do |f|
        f.puts(ISSUE_TEMPLATE)
      end
      puts 'Created! .github/ISSUE_TEMPLATES.md'
    end

    puts 'Do you want to create ./github/PULL_REQUEST_TEMPLATE.md (y/n)?'
    input = gets.chomp
    if input == 'y'
      Dir.mkdir('./.github') unless FileTest.exist?('./.github')
      FileUtils.touch('./.github/PULL_REQUEST_TEMPLATE.md')
      File.open('./.github/PULL_REQUEST_TEMPLATE.md', 'w') do |f|
        f.puts(PULL_REQUEST_TEMPLATE)
      end
      puts 'Created! .github/PULL_REQUEST_TEMPLATE.md'
    end

    puts 'Do you want to create ./.gitmessage (y/n)?'
    input = gets.chomp
    if input == 'y'
      FileUtils.touch('./.gitmessage')
      File.open('./.gitmessage', 'w') do |f|
        f.puts(COMMIT_MESSAGE_TEMPLATE)
      end
      puts 'Created! .gitmessage'
    end
  end
end
