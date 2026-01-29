class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.23.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.23.0/cctr-v0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "085fe18ae2a3034e90cc838422e45e4b34700a1e1fe07427779ee3259de12946"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.23.0/cctr-v0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "ead319ffc8a05c9e74aa7c08e8965b16c1f280b0fe94bdee7d4a11493dea260a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.23.0/cctr-v0.23.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8241314de58a0898f7263e650e885b923f723dec7034a62b21591249be4896dc"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.23.0/cctr-v0.23.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9d0ce99735333f7046259af07c6d952a94b2ff4c71f49f3e90848a808c30993f"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
