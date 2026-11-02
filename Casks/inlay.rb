cask "inlay" do
  version "0.2.1"
  sha256 "1309eed814a965df8da16963e6acfcf8d873b3da40a6f2955d7586aa4bb9d1c7"

  url "https://github.com/de-hv/inlay/releases/download/v#{version}/Inlay-#{version}.zip"
  name "Inlay"
  desc "Tiling window manager based on AeroSpace"
  homepage "https://github.com/de-hv/inlay"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Inlay.app"
  binary "#{appdir}/Inlay.app/Contents/Resources/bin/inlay"

  uninstall quit: "com.dehv.inlay"

  zap trash: "~/Library/Logs/Inlay"
end