cask "clawdagotchi" do
  version "1.10.2"
  sha256 "d31bd7c4f10242fb710cce72970fedb3e75cdfaf03e24296f07f1639587ddedd"

  url "https://github.com/cpenned/clawdagotchi/releases/download/v#{version}/Clawdagotchi-#{version}.dmg"
  name "Clawdagotchi"
  desc "Tamagotchi-style virtual crab companion for Claude Code"
  homepage "https://clawdagotchi.com"

  depends_on macos: ">= :sequoia"

  app "Clawdagotchi.app"

  zap trash: [
    "~/Library/Preferences/com.cpenned.Clawdagotchi.plist",
    "~/Library/Caches/com.cpenned.Clawdagotchi",
  ]
end
