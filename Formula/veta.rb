class Veta < Formula
  desc "Memory and knowledge base for agents"
  homepage "https://github.com/andreasjansson/veta"
  version "0.3.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/veta/releases/download/v0.3.7/veta-v0.3.7-x86_64-apple-darwin.tar.gz"
      sha256 "cd0deed051ae9c24b6a362a7ade97065d915942ef7821e8d6a5f75547b1400f3"
    end
    on_arm do
      url "https://github.com/andreasjansson/veta/releases/download/v0.3.7/veta-v0.3.7-aarch64-apple-darwin.tar.gz"
      sha256 "c7c640677051007c75d39099ccba5e792bd5442718139b45f223527ef221e584"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/veta/releases/download/v0.3.7/veta-v0.3.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "358677682da3b785c3e1500c869a1afffdfaf1e7b86630ef21b007e6d655a3e7"
    end
    on_arm do
      url "https://github.com/andreasjansson/veta/releases/download/v0.3.7/veta-v0.3.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "37fa5ac2c1e227c524c56e190a5af3d88551e26d67f24cc6b22745479129323b"
    end
  end

  def install
    bin.install "veta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veta --version")
  end
end
