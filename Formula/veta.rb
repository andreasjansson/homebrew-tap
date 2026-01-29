class Veta < Formula
  desc "Memory and knowledge base for agents"
  homepage "https://github.com/andreasjansson/veta"
  version "0.3.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/veta/releases/download/v0.3.6/veta-v0.3.6-x86_64-apple-darwin.tar.gz"
      sha256 "3c0e02dcfa289f3516649d3fe6fd698f7ac487791c4d955e696f1e0e30d039a9"
    end
    on_arm do
      url "https://github.com/andreasjansson/veta/releases/download/v0.3.6/veta-v0.3.6-aarch64-apple-darwin.tar.gz"
      sha256 "cf723d2f23d0feee3489dcdb8f7bfeff9c2396947c5e66564035d2ef30b410a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/veta/releases/download/v0.3.6/veta-v0.3.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "84917bb6439f33b9301622ab9802c1f905332d9599d091c606250aa775d586b9"
    end
    on_arm do
      url "https://github.com/andreasjansson/veta/releases/download/v0.3.6/veta-v0.3.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dc0dc9083a41b83b6e4298496529338fb301fec471203ba17e6dddb2c3be9250"
    end
  end

  def install
    bin.install "veta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veta --version")
  end
end
