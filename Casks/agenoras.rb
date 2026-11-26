cask "agenoras" do
  version "0.1.11"
  sha256 "56ba89f33ffb8de79511af1aa82f9cbde5f098c78d4351a69243b838f3e47a96"

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
