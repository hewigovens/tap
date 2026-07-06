cask "github-desktop-tip" do
  version "20260706-69c253859b"
  sha256 "ba5347f461ac2a19fdce2eba472f963c1ad6d026ee0bdcea733ee08a44ec7f78"

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
