cask "inlay" do
  version "0.3.0"
  sha256 "56727c5d32036b80745602dbf326e0d4ecba5db2cbec75a8876b8a0f1effd4fa"

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
