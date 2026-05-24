cask "mcode" do
  version "0.2.8"
  sha256 "08a3fc67cf4a30eb3914799827a79bc8214a01ca59651dbb55897ffff3fd991e"

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
