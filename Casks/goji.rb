# Homebrew cask for Goji. scripts/release.sh fills in the version and sha256
# and pushes the result to the brendanrong/homebrew-goji tap as Casks/goji.rb.
#
#   brew install --cask brendanrong/goji/goji
cask "goji" do
  version "1.3.2"
  sha256 "31fb654c02ff600fd1f360bbde380296764b6f92787cc5b3e6df07f6fec5ebce"

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
