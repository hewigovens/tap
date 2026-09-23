cask "jayjay" do
  version "0.3.18,61"
  sha256 "681f63aa49a7f28c0cc802ccd443fb0e3fbe0516a11f9775846c3e6c0b958927"

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
