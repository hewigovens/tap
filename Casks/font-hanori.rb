cask "font-hanori" do
  version "0.1.4"
  sha256 "35a64f23c4903900c6960880c3054a8a2c12fd14a0c23fa4bf784451b642e25d"

  url "https://github.com/hewigovens/hanori-sans/releases/download/v#{version}/Hanori-#{version}.zip"
  name "Hanori"
  desc "English, Simplified Chinese, and Japanese fonts with optional furigana"
  homepage "https://github.com/hewigovens/hanori-sans"

  font "HanoriSans-Regular.otf"
  font "HanoriSansFurigana-Regular.otf"
  font "HanoriSerif-Regular.otf"
  font "HanoriSerifFurigana-Regular.otf"
end
