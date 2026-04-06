cask "clawdagotchi" do
  version "1.10.1"
  sha256 "a95b7afa5017648ac6065742b2a2913c9d361ff5c87dec6a7d38dac979006458"

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
