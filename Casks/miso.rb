cask "miso" do
  version "1.0.2"
  sha256 "deaef208f4a958cad01cb5e1966dc2650000e3e604462d3068e238b5fd373164"

  url "https://github.com/hewigovens/Miso/releases/download/#{version}/Miso.zip"
  name "Miso"
  desc "HUD-style input method switcher"
  homepage "https://github.com/hewigovens/Miso"

  depends_on macos: :monterey

  app "Miso.app"

  zap trash: [
    "~/Library/Application Support/Miso",
    "~/Library/Preferences/dev.hewig.Miso.plist",
    "~/Library/Saved Application State/dev.hewig.Miso.savedState",
  ]
end
