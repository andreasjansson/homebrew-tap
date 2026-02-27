class Plwr < Formula
  desc "Clean CLI for Playwright browser automation with CSS selectors"
  homepage "https://github.com/andreasjansson/plwr"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.16.0/plwr-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "112b12a2fb3a09a746e8bd8758d3c1f4bb6cf8eee54d7cc2cc7cde4ed92784ca"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.16.0/plwr-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "6eea1908a5a63661016f871af1a23134b19b86487beeb5d6d6f82560d49f7270"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.16.0/plwr-v0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "97e61741c933060e56533aded0562203a397e55998a58fe45e555ed3bf08df58"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.16.0/plwr-v0.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9cda63c3262f4f41077ff46e0dad8ad26a181253db9b674d9fb125eb667979ec"
    end
  end

  def install
    bin.install "plwr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plwr --version")
  end
end
