cask "app-detective" do
  version "1.5.3"
  sha256 "f3040e56a0213fd86d335fd2ff950f23ce040140699ec8b2416384e6671f230e"

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
