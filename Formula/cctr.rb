class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.26.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.26.0/cctr-v0.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "edd9181004f73bdff89980df656b2e3ad037d49a33af708eac0d0dec6e1692f9"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.26.0/cctr-v0.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "a85b94c56be5e55340038171a1b3bdbbc4d502c4b37debebea7b1be623655a22"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.26.0/cctr-v0.26.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f578e641ce4e12171e360ac796d0cb5a9da0a3210288180148ca72017a7517ae"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.26.0/cctr-v0.26.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ec504a9e9fd22e69b5b374d3a4de70e8f2e9eb3bb01a91f6fab8b2b1762cd15"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
