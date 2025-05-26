cask "blackboard-sync" do
  version "0.18.0"
  sha256 "7405e95e3f8667786f5a9d4815790d0026d891bd421b4df493ee9342f4759e32"

  url "https://github.com/sanjacob/BlackboardSync/releases/download/#{version}/blackboard_sync-x86_64.dmg"
  name "BlackboardSync"
  desc "Blackboard course content synchronization tool"
  homepage "https://github.com/sanjacob/BlackboardSync"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"
  depends_on arch: :x86_64

  app "BlackboardSync.app"

  zap trash: [
    "~/Library/Application Support/BlackboardSync",
    "~/Library/Preferences/com.sanjacob.blackboardsync.plist",
    "~/Library/Saved Application State/com.sanjacob.blackboardsync.savedState"
  ]
end
