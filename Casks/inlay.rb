cask "inlay" do
  version "0.6.1"
  sha256 "56c68b0d778777884dfc21fc2a48cd0953ae035cea3252c41f93b1c2ee45bdd3"

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
