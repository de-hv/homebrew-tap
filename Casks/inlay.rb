cask "inlay" do
  version "0.1.0"
  sha256 "7206feac2bdc1e05756bbb9302155ac5125957151690bdfd8e46538896f1d1b8"

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