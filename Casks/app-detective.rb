cask "app-detective" do
  version "1.6.1"
  sha256 "601a84ad2e69916f5abf0b8d47e840a9dca43c6e3045efb1908eaea595c7aa14"

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
