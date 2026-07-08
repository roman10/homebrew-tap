cask "mcode" do
  version "0.2.9"
  sha256 "8681b5fce3e4a9a44b2549d75d1a2cfaf47412b691187bf081239ebe51290e57"

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
