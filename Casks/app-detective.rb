cask "app-detective" do
  version "1.6.0"
  sha256 "7bd278c5a856729c895baa92e0745d898ab7b88917642f0a58dc4c5177be0ed0"

  url "https://github.com/hewigovens/app-detective/releases/download/#{version}/AppDetective-#{version}.zip"
  name "App Detective"
  desc "Inspect macOS apps for embedded frameworks and plug-ins"
  homepage "https://github.com/hewigovens/app-detective"

  depends_on macos: :sonoma

  app "AppDetective.app"

  zap trash: [
    "~/Library/Application Support/AppDetective",
    "~/Library/Preferences/dev.hewig.AppDetective.plist",
    "~/Library/Saved Application State/dev.hewig.AppDetective.savedState",
  ]
end
