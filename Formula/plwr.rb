class Plwr < Formula
  desc "Clean CLI for Playwright browser automation with CSS selectors"
  homepage "https://github.com/andreasjansson/plwr"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.20.0/plwr-v0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "8cb80947d5d35400e27cf263fa153f3f1b81a9df6cc23290e898fb65ead3ce9e"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.20.0/plwr-v0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "8c506ccca6ddda2f6eaa35262846d58500fe153ea194876d9c8772f71e28c3a5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.20.0/plwr-v0.20.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f2df6b5c3ae1a81c1807fe72d29b1d7aace6fe0da50d23655d7ae2e678d64811"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.20.0/plwr-v0.20.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "264953e4fb24cadfb075f6d19a621ad399178d2994ac55ac1c9b0e6bd26a9edf"
    end
  end

  def install
    bin.install "plwr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plwr --version")
  end
end
