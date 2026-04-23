cask "jayjay" do
  version "0.2.13,17"
  sha256 "0a17a3acb913c47105bf54aa12abbc470c6c76980dae3b47ac4b2dd6cdd90480"

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
