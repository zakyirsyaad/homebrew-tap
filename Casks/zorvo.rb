cask "zorvo" do
  version "0.16.0"
  sha256 "6c34842109aa8b6d54dd575cf4325c237822841de4fa3c044ff55319182bbed5"

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
