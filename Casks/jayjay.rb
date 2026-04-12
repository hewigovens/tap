cask "jayjay" do
  version "0.2.11,15"
  sha256 "443c1a48d5fd5302653744dc1b03609c50cb4812334d095cf2b9e4d469db2af7"

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
