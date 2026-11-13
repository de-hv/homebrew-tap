cask "tabstage" do
  version "0.7.1"
  sha256 "8a5d933def19c0a3db33f6d4cad97a0c877c81a080501c65017e41647d932b3c"

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
