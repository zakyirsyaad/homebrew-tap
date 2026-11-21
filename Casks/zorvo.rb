cask "zorvo" do
  version "0.15.0"
  sha256 "7869e33f99fe32d38266410d3b39692ef414317a08d1dc9a61925271d0599933"

  url "https://github.com/zakyirsyaad/zorvo/releases/download/v#{version}/Zorvo_#{version}_universal.dmg"
  name "Zorvo"
  desc "Desktop app for Claude Code, Codex, Qwen Code and other ACP coding agents"
  homepage "https://zorvolabs.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Zorvo.app"

  zap trash: [
    "~/Library/Application Support/xyz.zorvo.desktop",
    "~/Library/Caches/xyz.zorvo.desktop",
    "~/Library/Preferences/xyz.zorvo.desktop.plist",
    "~/Library/WebKit/xyz.zorvo.desktop",
  ]
end
