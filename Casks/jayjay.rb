cask "jayjay" do
  version "0.3.5,39"
  sha256 "54ba3d6af4a94d3fc6ada13ab66409964689dbf41d5dfadb04161621d8732ff8"

  url "https://github.com/hewigovens/jayjay/releases/download/v#{version.csv.first}/JayJay-#{version.csv.first}.zip"
  name "JayJay"
  desc "Native GUI for Jujutsu version control"
  homepage "https://github.com/hewigovens/jayjay"

  auto_updates true
  depends_on macos: :tahoe
  depends_on formula: "jj"

  app "JayJay.app"
  binary "#{appdir}/JayJay.app/Contents/MacOS/jayjay-cli", target: "jayjay"

  zap trash: [
    "~/Library/Caches/dev.hewig.jayjay",
    "~/Library/Preferences/dev.hewig.jayjay.plist",
    "~/Library/Saved Application State/dev.hewig.jayjay.savedState",
  ]
end
