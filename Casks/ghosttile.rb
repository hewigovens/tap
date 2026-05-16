cask "ghosttile" do
  version "2.0.6,23"
  sha256 "5cb72706985cc7ba6db8e885eaf2b286412d4e377b18d4d28ac9ac1111bf9028"

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
