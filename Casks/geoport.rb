cask "geoport" do
  version "4.0.2"
  sha256 "60dcbf6c4ac02bd2661546229ad6ef981f2608890a9f8eabc4c153fb35d58887"

  url "https://github.com/davesc63/GeoPort/releases/download/v#{version}/GeoPort-x86-v#{version}.dmg"
  name "GeoPort"
  desc "Serial port terminal utility for geotechnical instruments"
  homepage "https://github.com/davesc63/GeoPort"

  app "GeoPort.app"

  zap trash: [
    "~/Library/Application Support/GeoPort",
    "~/Library/Preferences/com.davesc63.geoport.plist",
    "~/Library/Saved Application State/com.davesc63.geoport.savedState"
  ]
end
