cask "mcode" do
  version "0.2.5"
  sha256 "b4042e89ed03d2f9e6f8a01a64c59704436e2a77e574c26ca57f0b7e9df410c9"

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
