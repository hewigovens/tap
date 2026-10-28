cask "remote-launcher" do
  version "0.1.0"
  sha256 "66442a2b5abcf62292ef343a28b4f435b10c765c3ddd0c0fa08732bcab7b4a5d"

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
