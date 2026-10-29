cask "remote-launcher" do
  version "0.1.3"
  sha256 "b9d441a6ed098d7a8b202c584abda30a013b878fa40fcc500fe74cd69d8d2532"

  url "https://github.com/hewigovens/remote-launcher/releases/download/v#{version}/RemoteLauncher-#{version}-macos-arm64.zip"
  name "Remote Launcher"
  desc "Launch High Performance Screen Sharing connections to remote Macs"
  homepage "https://github.com/hewigovens/remote-launcher"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Remote Launcher.app"

  uninstall quit: "dev.hewig.ScreenSharingLauncher"

  zap trash: [
    "~/Library/Application Support/dev.hewig.ScreenSharingLauncher",
    "~/Library/Preferences/dev.hewig.ScreenSharingLauncher.plist",
    "~/Library/Saved Application State/dev.hewig.ScreenSharingLauncher.savedState",
  ]
end
