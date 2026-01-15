class Leta < Formula
  desc "LSP Enabled Tools for Agents - fast semantic code navigation"
  homepage "https://github.com/andreasjansson/leta"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.8.0/leta-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "c55a2e01e6cbf6f97d9562765cec4ef9c1df8684b2024dd8a0c06ca892373841"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.8.0/leta-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "9ea1fe072c0343d3c8bde2c4e41c0c33f62af405e304d0e72e6351621d1a039d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.8.0/leta-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5e1f7dd142d46ff7b2d1001fedd18c199780de5ee03c445771f83432b5d37ca0"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.8.0/leta-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "397a85302f706c63c8f51450efa8ec54d994817ce76a69c0f7f4f9fe2cabfe9c"
    end
  end

  def install
    bin.install "leta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leta --version")
  end
end
