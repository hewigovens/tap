cask "app-detective" do
  version "1.4.0"
  sha256 "2f7a253b5f870048d54882b65be536b5be4234b99d48189d6dd3ff6c4b894c4c"

  url "https://github.com/hewigovens/app-detective/releases/download/#{version}/AppDetective-#{version}.zip"
  name "App Detective"
  desc "Inspect macOS apps for embedded frameworks and plug-ins"
  homepage "https://github.com/hewigovens/app-detective"

  depends_on macos: ">= :sonoma"

  app "AppDetective.app"

  zap trash: [
    "~/Library/Application Support/AppDetective",
    "~/Library/Preferences/dev.hewig.AppDetective.plist",
    "~/Library/Saved Application State/dev.hewig.AppDetective.savedState",
  ]
end
