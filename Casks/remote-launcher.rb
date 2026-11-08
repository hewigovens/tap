cask "remote-launcher" do
  version "0.1.5"
  sha256 "caea9c1bcaad83cc3be50dc0d3770110b4dd9cf41b8535759a882940494d3a4a"

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
