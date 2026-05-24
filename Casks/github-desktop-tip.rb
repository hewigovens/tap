cask "github-desktop-tip" do
  version "20260524-47e2f27ccf"
  sha256 "6294a4ef668f790438be2f9bf83e3e2c305ece8ef7231ee0aac28c9aea0b813f"

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
