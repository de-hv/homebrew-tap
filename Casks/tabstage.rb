cask "tabstage" do
  version "0.7.3"
  sha256 "7f767ab2a67805248d7acd68aed4577fd7305ae097ceb4b3d10033be1353940e"

  url "https://github.com/de-hv/tabstage/releases/download/v#{version}/Tabstage_#{version}_universal.dmg"
  name "Tabstage"
  desc "Groups of tabs that open in the browser you choose"
  homepage "https://de-hv.github.io/tabstage/"

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
