cask "jayjay" do
  version "0.3.16,52"
  sha256 "9fb91a157fb4283d1c7ef1c3312161ae927920b3a12f147663f892f2db46fc42"

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
