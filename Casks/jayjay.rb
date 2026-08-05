cask "jayjay" do
  version "0.3.12,46"
  sha256 "087ce23144dda6b6be7231eb190fe9d745f4efdec5b6cfa079d6831ac8d1f4b3"

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
