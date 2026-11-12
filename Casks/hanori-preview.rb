cask "hanori-preview" do
  version "0.1.4"
  sha256 "1ac1adbb4e5b1640c263dcbdbd6cee04e729438c96c1a62ed3c18c85dd592c24"

  url "https://github.com/hewigovens/hanori-sans/releases/download/v#{version}/HanoriPreview-#{version}-macos-universal.zip"
  name "Hanori Preview"
  desc "Font preview and Safari Japanese reading extension"
  homepage "https://github.com/hewigovens/hanori-sans"

  depends_on macos: :sonoma

  app "HanoriPreview.app"

  uninstall quit: "me.hanori.preview"
end
