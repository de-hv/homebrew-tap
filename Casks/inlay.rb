cask "inlay" do
  version "0.1.1"
  sha256 "f1d222aee1c53eca4202cff8b601e7725f2bfaa795b8cbace56152915b9cfc33"

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