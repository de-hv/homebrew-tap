cask "inlay" do
  version "0.6.2"
  sha256 "c2c4ad75008d4191734c4b1441aaf8916f535822ef39bedbc6e4af60728839ad"

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
