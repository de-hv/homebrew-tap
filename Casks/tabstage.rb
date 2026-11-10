cask "tabstage" do
  version "0.3.1"
  sha256 "aec9921ac8a429b80e98a2a4a576f1e5b027ce1344bc6c61d082aced058dae56"

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
