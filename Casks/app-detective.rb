cask "app-detective" do
  version "1.4.1"
  sha256 "1fd554d026a6280a3d7fdcbced88e27e8ed02f3527626d6b34629944eab82662"

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
