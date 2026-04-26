cask "ghosttile" do
  version "2.0.2,19"
  sha256 "daf2bfc12f0e94797b970f74c185371ed35fb5cbfb6d73f0ea06a64f45748306"

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
