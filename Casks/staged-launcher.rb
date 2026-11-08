cask "staged-launcher" do
  version "1.0.2"
  sha256 "854eb1811d11b181f126725bd1cb561db5d996d2d8a46f2235e742cffd98319b"

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
