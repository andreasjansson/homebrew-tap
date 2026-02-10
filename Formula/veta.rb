class Veta < Formula
  desc "Memory and knowledge base for agents"
  homepage "https://github.com/andreasjansson/veta"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/veta/releases/download/v0.6.1/veta-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "53869d39d244b19623fdc404eb5c5aa763c6e0e2ef500209aabef739edcedf8b"
    end
    on_arm do
      url "https://github.com/andreasjansson/veta/releases/download/v0.6.1/veta-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "e3731a093a384a5b841b71e2f1ebafb4188057d1846bb06703e7a7a1b3cad8e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/veta/releases/download/v0.6.1/veta-v0.6.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "81ecd28e9c62685e06c20e28e2128939685ae6c4cc5035b91d5fde5340d68cac"
    end
    on_arm do
      url "https://github.com/andreasjansson/veta/releases/download/v0.6.1/veta-v0.6.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0dd29827cbc9ff12104f4354687ab0e198a70598da4558f822c10a8f5c89a627"
    end
  end

  def install
    bin.install "veta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veta --version")
  end
end
