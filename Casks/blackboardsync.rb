cask "blackboardsync" do
  version "0.18.0"
  sha256 "7405e95e3f8667786f5a9d4815790d0026d891bd421b4df493ee9342f4759e32"

  url "https://github.com/sanjacob/BlackboardSync/releases/download/0.18.0/blackboard_sync-x86_64.dmg"
  name "BlackboardSync"
  desc "Command-line utility to sync Blackboard content"
  homepage "https://github.com/sanjacob/BlackboardSync"
  
  # Known issues with --version flag in the DMG distribution
  caveats do
    puts "The --version flag may not work in this distribution. Please check the GitHub releases page for version information."
  end

  app "BlackboardSync.app"
  binary "#{appdir}/BlackboardSync.app/Contents/MacOS/blackboardsync"

  zap trash: [
    "~/.cache/blackboard",
    "~/.config/blackboard",
  ]
end
