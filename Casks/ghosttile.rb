cask "ghosttile" do
  version "2.0.9,26"
  sha256 "e069ab7d636c7bae8bb0246a050bd40111c73b1ad925c63a7b35cf1436c96894"

  url "https://github.com/hewigovens/ghosttile-cli/releases/download/v#{version.csv.first}/GhostTile-#{version.csv.first}.zip"
  name "GhostTile"
  desc "Hide apps from Dock and Cmd+Tab"
  homepage "https://github.com/hewigovens/ghosttile-cli"

  depends_on macos: ">= :sequoia"

  app "GhostTile.app"

  postflight do
    system_command "#{appdir}/GhostTile.app/Contents/Resources/ghosttile-cli",
                   args: ["--version"],
                   print_stderr: false
  end

  zap trash: [
    "~/.config/ghosttile",
    "~/Library/Preferences/dev.hewig.ghosttile.plist",
    "~/Library/Saved Application State/dev.hewig.ghosttile.savedState",
  ]
end
