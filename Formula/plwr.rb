class Plwr < Formula
  desc "Clean CLI for Playwright browser automation with CSS selectors"
  homepage "https://github.com/andreasjansson/plwr"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.18.0/plwr-v0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "d185c1efcb8966e46458b90c90cb233464282ef1cdf707f376d4ac25ad487c57"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.18.0/plwr-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "d7773f2f4a462f6d38a684432a47e95bd382402d4905bbdba48d6af628311b34"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.18.0/plwr-v0.18.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2cb574eb9c2e0fb3d693ad62a044c3f0fb0bfc9706705001dcbb9585bac31299"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.18.0/plwr-v0.18.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eeb950199fe3f310e7d71e7f8b5a2d164443de12b1100b6d90990906f4342f5a"
    end
  end

  def install
    bin.install "plwr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plwr --version")
  end
end
