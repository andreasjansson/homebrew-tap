class Plwr < Formula
  desc "Clean CLI for Playwright browser automation with CSS selectors"
  homepage "https://github.com/andreasjansson/plwr"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.9.0/plwr-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "32fa97f35ab0552f33f13ceec6259d772e628630904f739dc9997a442dc70c72"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.9.0/plwr-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "c2974cb381999c9149ef6d3e75e653890cacc0202e02eccab42cbb180cc1f9cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.9.0/plwr-v0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "22abd82c452653581f2a1cefc35257a2d33bf03e5564840c7c1d1e3f6f992794"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.9.0/plwr-v0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c0cfdc5d45678e480d5b3d8da382184a8a7cd2fe9cdbcb798f4be31740db0241"
    end
  end

  def install
    bin.install "plwr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plwr --version")
  end
end
