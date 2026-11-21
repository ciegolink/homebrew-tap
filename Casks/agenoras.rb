cask "agenoras" do
  version "0.1.10"
  sha256 "18a9335f7494dacdcb4544ed831a45a9e11021759fff2ec9471b2f385604de0f"

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
