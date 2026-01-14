class Leta < Formula
  desc "LSP Enabled Tools for Agents - fast semantic code navigation"
  homepage "https://github.com/andreasjansson/leta"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.1.0/leta-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "cab1e5250d4a4230bb12f39458f4be7fa3e7468eacd3efb1a2c8b27743d158d5"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.1.0/leta-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "2ee0cbc648b73e75d23accee22ad7823fc8281633a65d7a418fd86b752c63886"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.1.0/leta-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6306fe1b670300a268c7f762a1d59aebf81cddf2bdfe1e23576281ebdfc64fa7"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.1.0/leta-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "37e1d4aa50cc228cacc8b2f64596c6675e8aed5a7381d3c46396a256ed49ff82"
    end
  end

  def install
    bin.install "leta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leta --version")
  end
end
