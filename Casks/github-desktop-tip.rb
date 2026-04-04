cask "github-desktop-tip" do
  version "20260404-56a8661486"
  sha256 "416bf8932bd131067b816d3b8bf7ef89fee5e212d569d3945360304032cd4aa4"

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
