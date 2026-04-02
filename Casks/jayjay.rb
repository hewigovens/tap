cask "jayjay" do
  version "0.2.6,10"
  sha256 "9317a23566b8d84ff12bb094fcfcd579a892ef13e0f0b2d9690ebe5c8f1d1f9d"

  url "https://github.com/hewigovens/jayjay/releases/download/v#{version.csv.first}/JayJay-#{version.csv.first}.zip"
  name "JayJay"
  desc "Native GUI for Jujutsu version control"
  homepage "https://github.com/hewigovens/jayjay"

  depends_on macos: ">= :sequoia"
  depends_on formula: "jj"

  app "JayJay.app"

  zap trash: [
    "~/Library/Preferences/com.jayjay.app.plist",
    "~/Library/Saved Application State/com.jayjay.app.savedState",
  ]
end
