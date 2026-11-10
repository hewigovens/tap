cask "staged-launcher" do
  version "1.0.3"
  sha256 "a21b0602cf2f3b910a9ef9b3192cdedb5ee8d2cc44b1ded1e30dac30b1d444b0"

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
