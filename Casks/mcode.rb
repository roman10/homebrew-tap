cask "mcode" do
  version "0.2.7"
  sha256 "a920d1803b722d19c5a6a2e4785990761f7d861e580f9b5a69fd4a7b3ab924b1"

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
