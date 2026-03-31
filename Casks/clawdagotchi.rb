cask "clawdagotchi" do
  version "1.6.3"
  sha256 "a52f8b255046c8e5d70cd4fdeb8188d3ee0caf7afa8386a32850e3ad665d6c1e"

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
