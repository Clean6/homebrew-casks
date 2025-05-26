cask "geoport" do
  version "4.0.2"
  sha256 :no_check

  url "https://github.com/davesc63/GeoPort/releases/download/v#{version}/GeoPort-x86-v#{version}.dmg"
  name "GeoPort"
  desc "Location simulation app for iOS devices"
  homepage "https://github.com/davesc63/GeoPort"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"
  container type: :dmg

  app "GeoPort-mac.app"

  
  zap trash: [
    "~/GeoPort",
    "~/Library/Saved Application State/com.davesc63.GeoPort.savedState"
  ]

  caveats do
    requires_rosetta
    <<~EOS
      GeoPort requires sudo/administrator permissions to function properly.
      On first run, you will need to authorize the app in System Settings > Privacy & Security.
      For iOS 17 and later devices, Developer Mode must be enabled.
    EOS
  end
end
