cask "github-desktop-tip" do
  version "20261110-e10110cc9b"
  sha256 "0e95552f89ede83cb504b137a519bc58d2efd6ba8dca98f30c8531b1dcaad4b2"

  url "https://github.com/hewigovens/github-desktop/releases/download/tip-#{version}/GitHub.Desktop-arm64.zip"
  name "GitHub Desktop (Tip)"
  desc "Tip build of GitHub Desktop from hewigovens/github-desktop"
  homepage "https://github.com/hewigovens/github-desktop"

  conflicts_with cask: "github-desktop"
  depends_on macos: :ventura

  app "GitHub Desktop.app"

  zap trash: [
    "~/Library/Application Support/GitHub Desktop",
    "~/Library/Preferences/com.github.GitHubClient.plist",
    "~/Library/Saved Application State/com.github.GitHubClient.savedState",
  ]
end
