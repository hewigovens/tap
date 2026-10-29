cask "remote-launcher" do
  version "0.1.2"
  sha256 "10b7b6ed8e6f39496d24cbda055dad410d68d4cdb756ded36618fbe90d9e8406"

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
