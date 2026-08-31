cask "github-desktop-tip" do
  version "20260831-80cd0b229b"
  sha256 "b20eea0b2cdc0f2cd878de37e4cc6301c96712b98077aeba9f329c06cbb8be03"

  url "https://github.com/hewigovens/github-desktop/releases/download/tip-#{version}/GitHub.Desktop-arm64.zip"
  name "GitHub Desktop (Tip)"
  desc "GitHub Desktop tip build from hewigovens/github-desktop"
  homepage "https://github.com/hewigovens/github-desktop"

  depends_on macos: :monterey

  app "GitHub Desktop.app"

  conflicts_with cask: "github-desktop"

  zap trash: [
    "~/Library/Application Support/GitHub Desktop",
    "~/Library/Preferences/com.github.GitHubClient.plist",
    "~/Library/Saved Application State/com.github.GitHubClient.savedState",
  ]
end
