class Plwr < Formula
  desc "Clean CLI for Playwright browser automation with CSS selectors"
  homepage "https://github.com/andreasjansson/plwr"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.21.0/plwr-v0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "7daa5d9b2c87855cbb5a5d82f55f19b74a050dcb7ffb1866d9cf7726decbc415"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.21.0/plwr-v0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "cef30c66877affb3048bcf105eab10f6a2085e80ed063b138d0a39e6a9b024e9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.21.0/plwr-v0.21.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4e6246cf96b008abc9056936092c0f6049e97ffcc5c0b3703ef2f295ce876b4b"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.21.0/plwr-v0.21.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "53b55b49d95fae2b4e86bcf32565687b573a0329c46a47da1a87d1ba3a156d22"
    end
  end

  def install
    bin.install "plwr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plwr --version")
  end
end
