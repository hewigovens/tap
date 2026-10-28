cask "remote-launcher" do
  version "0.1.1"
  sha256 "596c30bdc3b919f199d02eb43591bacf1d75243c82b03bf6eb1179744d837289"

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
