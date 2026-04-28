cask "jayjay" do
  version "0.2.16,20"
  sha256 "422989911163e632c97b1a4a638682a67759f17afbb6466b1f6cf20d941c3707"

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
