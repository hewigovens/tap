cask "ghosttile" do
  version "2.0.0,17"
  sha256 "6616673e2e80803f9433e311756b861711b95b6e2b64ca5ab255b6fe61275150"

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
