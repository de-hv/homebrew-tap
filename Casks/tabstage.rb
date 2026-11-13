cask "tabstage" do
  version "0.7.0"
  sha256 "34cf04de9e02ed4abdee58a2b8bf7b411c3431dacbe4f1db7a5b55f18a35d90f"

  url "https://github.com/de-hv/tabstage-desktop/releases/download/v#{version}/Tabstage_#{version}_universal.dmg"
  name "Tabstage"
  desc "Groups of tabs that open in the browser you choose"
  homepage "https://de-hv.github.io/tabstage-desktop/"

  depends_on :macos

  app "Tabstage.app"

  # Not notarized yet: drop the quarantine flag so Gatekeeper lets it open.
  # Steps only take literal arguments, so this assumes the default appdir.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "/Applications/Tabstage.app"]
  end

  uninstall quit: "io.github.de-hv.tabstage"

  zap trash: [
    "~/Library/Application Support/io.github.de-hv.tabstage",
    "~/Library/Caches/io.github.de-hv.tabstage",
    "~/Library/WebKit/io.github.de-hv.tabstage",
  ]
end
