cask "staged-launcher" do
  version "1.0.1"
  sha256 "c00b7be38489ae3b5666401d90a5135fc49873ee09b7a911723ccef0e79b2d49"

  url "https://github.com/hewigovens/StagedLauncher/releases/download/#{version}/Staged.Launcher.zip"
  name "Staged Launcher"
  desc "Stage Manager workspace launcher"
  homepage "https://github.com/hewigovens/StagedLauncher"

  depends_on macos: :sonoma

  app "Staged Launcher.app"

  zap trash: [
    "~/Library/Application Support/Staged Launcher",
    "~/Library/Preferences/dev.hewig.StagedLauncher.plist",
    "~/Library/Saved Application State/dev.hewig.StagedLauncher.savedState",
  ]
end
