cask "clawdagotchi" do
  version "1.10.3"
  sha256 "bb42cfd53cc882d188341651a679e15d86a5cd6f7a30a037a560906fb76aa853"

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