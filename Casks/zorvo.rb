cask "zorvo" do
  version "0.14.1"
  sha256 "c4486a855fff84d7dacb9675736528f7d3c5bd8a53cd8e17b14eee38e7cd0657"

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
