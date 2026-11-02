cask "agenoras" do
  version "0.1.6"
  sha256 "f9f0ca4d9e4b3598c387be230454b9660bd980378ca76ec40c0468ed62864bee"

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
