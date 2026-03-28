class Leta < Formula
  desc "LSP Enabled Tools for Agents - fast semantic code navigation"
  homepage "https://github.com/andreasjansson/leta"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.13.0/leta-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "dcc56d53a1d202576b679d00fd97a6b12bfa3e6375af4d3bc74f0e09948f0fab"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.13.0/leta-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "d04ac9ac941f721a5f8c082d1ca65fd999b2f0b54aaa430acc7e446af9f3eade"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.13.0/leta-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "abc0e6a38c1832a2ca69cb54d59b8747144d966b6585b162d7c56c76498b6da0"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.13.0/leta-v0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3cdf4cc016d82c3319ddd8c5879898c254c9cae7eabac173e5399b11ac311ec8"
    end
  end

  def install
    bin.install "leta"
    bin.install "leta-daemon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leta --version")
  end
end
