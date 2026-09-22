# Homebrew cask for Goji. scripts/release.sh fills in the version and sha256
# and pushes the result to the brendanrong/homebrew-goji tap as Casks/goji.rb.
#
#   brew install --cask brendanrong/goji/goji
cask "goji" do
  version "1.3.0"
  sha256 "af401549cf33a4ba7a1a8f8b5954d9bfcdc9de70d4a05d99a9d561281a5a6f51"

  url "https://github.com/brendanrong/goji/releases/download/v#{version}/Goji.dmg"
  name "Goji"
  desc "Local, private dictation for macOS. Hold a key, talk, release."
  homepage "https://brendanrong.github.io/goji/"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Goji.app"

  zap trash: [
    "~/Library/Preferences/com.brendanrong.Goji.plist",
    "~/Library/Application Support/FluidAudio",
  ]
end
