cask "github-desktop-tip" do
  version "20260323-b457ffda3b"
  sha256 "784f68907f7707a6b1de5ced07f9dade7cd64c60d76caa4d9f4a64f211b21054"

  url "https://github.com/hewigovens/github-desktop/releases/download/tip-#{version}/GitHub.Desktop-arm64.zip"
  name "GitHub Desktop (Tip)"
  desc "GitHub Desktop tip build from hewigovens/github-desktop"
  homepage "https://github.com/hewigovens/github-desktop"

  depends_on macos: ">= :monterey"

  app "GitHub Desktop.app"

  conflicts_with cask: "github-desktop"

  zap trash: [
    "~/Library/Application Support/GitHub Desktop",
    "~/Library/Preferences/com.github.GitHubClient.plist",
    "~/Library/Saved Application State/com.github.GitHubClient.savedState",
  ]
end
