cask "moogh" do
  version "2026.9.30-1"

  on_arm do
    sha256 "c1850edd1e82ce819c56182fbadf0ef50553d4a8765bcaa3b6a7145e063cfa0c"

    url "https://down.aimoogh.com/downloads/mac_arm64/stable/#{version}/moogh-mac-arm64-#{version}.zip"
  end

  on_intel do
    sha256 "5c747beed1287204f29d76c0e581c4f52b3d9823a772e4e1340792c464570a62"

    url "https://down.aimoogh.com/downloads/mac_x64/stable/#{version}/moogh-mac-x64-#{version}.zip"
  end

  name "MOOGH"
  desc "AI agent desktop client that plans and executes tasks on your own computer"
  homepage "https://www.aimoogh.com/"

  livecheck do
    url "https://down.aimoogh.com/downloads/mac_arm64/updates/stable/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "MOOGH.app"

  zap trash: [
    "~/Library/Application Support/MOOGH",
    "~/Library/Caches/ai.gozi.desktop",
    "~/Library/Logs/MOOGH",
    "~/Library/Preferences/ai.gozi.desktop.plist",
    "~/Library/Saved Application State/ai.gozi.desktop.savedState",
  ]
end
