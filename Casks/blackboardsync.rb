cask "blackboardsync" do
  version :latest
  sha256 :no_check

  url "https://github.com/sanjacob/BlackboardSync/archive/refs/heads/main.zip"
  name "BlackboardSync"
  desc "Command-line utility to sync Blackboard content"
  homepage "https://github.com/sanjacob/BlackboardSync"

  depends_on formula: "python@3.11"
  depends_on formula: "pipx"

  postflight do
    system "/usr/local/bin/pipx", "install", staged_path/"BlackboardSync-main"
  end

  uninstall delete: "~/.local/pipx/venvs/blackboardsync"

  zap trash: [
    "~/.config/blackboard",
    "~/.cache/blackboard"
  ]
end
