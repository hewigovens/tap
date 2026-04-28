cask "ghosttile" do
  version "2.0.4,21"
  sha256 "f0b70eea2b1de5729f9f3a9b59a9f699ad6a36df3137b04980e5825c892127bf"

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
