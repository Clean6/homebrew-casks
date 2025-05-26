cask "template-app" do
  version "0.0.0"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  url "https://example.com/downloads/template-app-#{version}.dmg"
  name "Template App"
  desc "Template for creating new cask files"
  homepage "https://example.com"

  # Supported artifacts, uncomment as needed:
  # app "Template App.app"
  # pkg "Template App.pkg"
  # binary "template-cli"
  # suite "Template Suite"
  
  # Optional stanzas:
  # depends_on macos: ">= :catalina"
  # depends_on cask: "some-app"
  # conflicts_with cask: "other-app"

  # Uninstall process if needed:
  # uninstall quit: "com.example.app",
  #           pkgutil: "com.example.pkg"

  # Cleanup stanza (recommended):
  zap trash: [
    "~/Library/Application Support/Template App",
    "~/Library/Caches/com.example.app",
    "~/Library/Preferences/com.example.app.plist",
    "~/Library/Saved Application State/com.example.app.savedState"
  ]
end
