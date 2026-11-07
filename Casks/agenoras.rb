cask "agenoras" do
  version "0.1.8"
  sha256 "3ac44a4d8d44b8b7470bc4175e0e9870e168cefc21a1839544d3ca3992c443d4"

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
