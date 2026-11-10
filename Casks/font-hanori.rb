cask "font-hanori" do
  version "0.1.3"
  sha256 "9e9a0f748714cf6db213d012e556cf2e7503ecf85bfe75005fd874beea1c063b"

  url "https://github.com/hewigovens/hanori-sans/releases/download/v#{version}/Hanori-#{version}.zip"
  name "Hanori"
  desc "English, Simplified Chinese, and Japanese fonts with optional furigana"
  homepage "https://github.com/hewigovens/hanori-sans"

  font "HanoriSans-Regular.otf"
  font "HanoriSansFurigana-Regular.otf"
  font "HanoriSerif-Regular.otf"
  font "HanoriSerifFurigana-Regular.otf"
end
