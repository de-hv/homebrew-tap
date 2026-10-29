class Dehv < Formula
  desc "My own desktop toolkit: zsh commands behind one name"
  homepage "https://github.com/de-hv/dehv"
  url "https://github.com/de-hv/dehv/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "6259b687b96cece5abaa9643e2583182129d0ca115be7774b72aa22bf5cff1b2"
  head "https://github.com/de-hv/dehv.git", branch: "main"

  depends_on :macos

  def install
    libexec.install "bin", "lib.zsh", "commands", "VERSION"
    bin.install_symlink libexec/"bin/dehv"
    zsh_completion.install "completions/_dehv"
  end

  def caveats
    <<~EOS
      To see the dehv hi card in every new terminal, add to ~/.zshrc:
        dehv hi
    EOS
  end

  test do
    assert_match "dehv - my own desktop toolkit", shell_output(bin/"dehv")
    assert_equal libexec.to_s, shell_output("#{bin}/dehv where").chomp
  end
end
