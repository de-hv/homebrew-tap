cask "inlay" do
  version "0.6.4"
  sha256 "59fe376aa7c733a3c56315d92081130a473c4654ca081d3a386957e3243f791c"

  url "https://github.com/de-hv/inlay/releases/download/v#{version}/Inlay-#{version}.zip"
  name "Inlay"
  desc "Tiling window manager based on AeroSpace"
  homepage "https://github.com/de-hv/inlay"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Inlay.app"
  binary "#{appdir}/Inlay.app/Contents/Resources/bin/inlay"

  uninstall quit: "com.dehv.inlay"

  zap trash: "~/Library/Logs/Inlay"
end
