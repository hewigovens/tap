cask "jayjay" do
  version "0.2.0,3"
  sha256 "4527c0cb3f67956f37e8aa254417476a5fdeefa764cd9c793af0842899faaa1f"

  url "https://github.com/hewigovens/jayjay/releases/download/v#{version.csv.first}/JayJay-#{version.csv.first}.zip"
  name "JayJay"
  desc "Native GUI for Jujutsu version control"
  homepage "https://github.com/hewigovens/jayjay"

  depends_on macos: ">= :sequoia"

  app "JayJay.app"

  zap trash: [
    "~/Library/Preferences/com.jayjay.app.plist",
    "~/Library/Saved Application State/com.jayjay.app.savedState",
  ]
end
