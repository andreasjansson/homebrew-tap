class Plwr < Formula
  desc "Clean CLI for Playwright browser automation with CSS selectors"
  homepage "https://github.com/andreasjansson/plwr"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.10.0/plwr-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "b454df9013c6294a1462d959782e177ebc4e68b6860055a4670e2d818b81e1f8"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.10.0/plwr-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "a25ba1de27b7d1c58db24300e2898dea551f25dc2747d8999645007b65a81b2c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.10.0/plwr-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c9d3fb4cf4c5a021dc05182b03dbd0a64743dca3434dd5785c695e52eb918589"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.10.0/plwr-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "27f8d59885aa5dbf1390c33f43e8519e8524c1990255b888782d233a21dad8e6"
    end
  end

  def install
    bin.install "plwr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plwr --version")
  end
end
