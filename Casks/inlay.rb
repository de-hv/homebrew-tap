cask "inlay" do
  version "0.2.0"
  sha256 "984b9f58bef933b1f28e0a4d8c6226f1c2a42f1f00ca927078ca7835f6f6b127"

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