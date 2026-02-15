class Plwr < Formula
  desc "Clean CLI for Playwright browser automation with CSS selectors"
  homepage "https://github.com/andreasjansson/plwr"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.7.2/plwr-v0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "34ff94efb500ff9946b981a6ed172c6073c1150652b5f581804bffea18d46d37"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.7.2/plwr-v0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "3dedf11898afff738c28e82be526ec11a17d0ee22c95885590507f50641d21b4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.7.2/plwr-v0.7.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2c6a1844085241b287b55d0d6ee14f9b3265f20a314cbb31473c2e1e7f159060"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.7.2/plwr-v0.7.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ea2284f183679153fc88065ed7c63cee9142ff8ee489fa9ca74d5fc36ef5b180"
    end
  end

  def install
    bin.install "plwr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plwr --version")
  end
end
