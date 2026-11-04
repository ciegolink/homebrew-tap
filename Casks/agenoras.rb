cask "agenoras" do
  version "0.1.7"
  sha256 "4a599f7d8036e31e5b873397ac025fb6252a0990512848e37479adabb0d97b5b"

  url "https://github.com/ciegolink/agenoras/releases/download/v#{version}/Agenoras.dmg"
  name "Agenoras"
  desc "Mail, calendar, contacts, tasks and feeds in one app"
  homepage "https://github.com/ciegolink/agenoras"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Agenoras.app"

  zap trash: [
    "~/Library/Application Support/agenoras",
    "~/Library/Caches/ch.ciegolink.agenoras",
    "~/Library/Caches/ch.ciegolink.agenoras.ShipIt",
    "~/Library/Preferences/ch.ciegolink.agenoras.plist",
    "~/Library/Saved Application State/ch.ciegolink.agenoras.savedState",
  ]
end
