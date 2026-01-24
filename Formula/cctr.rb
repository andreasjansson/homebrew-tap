class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.14.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.14.1/cctr-v0.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "1eebf2384bd0cea2273c57c8ecbb2c626e52806c47579b745faea39da61005f9"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.14.1/cctr-v0.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "bde711edf0ac83887bbae52309055a3f2166d989d0d12765be05d1950d1df762"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.14.1/cctr-v0.14.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3e317c5ca289df493abc82cf9f3c582ce37ea6e9f520dbf95dc29bfc3d0623d9"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.14.1/cctr-v0.14.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f03bbd4c91d0402b8551b2b288834c324533c416eed9659ae9c8df030f0c58a"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
