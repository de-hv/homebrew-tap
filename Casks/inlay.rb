cask "inlay" do
  version "0.4.1"
  sha256 "51484a397ae7d77510ec4be05b02b19d645912a091734466f91bd59e11cab53a"

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
