cask "mcode" do
  version "0.2.6"
  sha256 "baa567bad250e259a9a603fd3c36041b99c58a68e6d7a277644307306d5cb752"

  url "https://github.com/roman10/mcode/releases/download/v#{version}/mcode-#{version}-arm64.dmg"
  name "mcode"
  desc "Terminal-native tiling IDE for parallel coding-agent sessions"
  homepage "https://github.com/roman10/mcode"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "mcode.app"

  zap trash: [
    "~/Library/Application Support/mcode",
    "~/Library/Preferences/com.mcode.app.plist",
    "~/Library/Caches/com.mcode.app",
    "~/Library/Logs/mcode",
  ]
end
