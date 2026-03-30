cask "clawdagotchi" do
  version "1.4.0"
  sha256 "fe4bf40e6e7b4b1ee884ce0e193cd527f303abce0b0de8046b02acb50ad6f5ca"

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
