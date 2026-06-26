cask "jayjay" do
  version "0.3.3,37"
  sha256 "65deec47bfc08ec8e812ea91825f5e7b665e2ebaf3eba4fd6636f60e1bc5a989"

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
