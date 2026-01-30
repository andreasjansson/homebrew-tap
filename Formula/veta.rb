class Veta < Formula
  desc "Memory and knowledge base for agents"
  homepage "https://github.com/andreasjansson/veta"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/veta/releases/download/v0.4.0/veta-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "e0a9ce5b88fdf3159267737e6f6c06a9b2298e059454fa59af5d40b308ad132f"
    end
    on_arm do
      url "https://github.com/andreasjansson/veta/releases/download/v0.4.0/veta-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "91fa4f6a4075546f39f16e8becbee62c767e2cd2be14b75a9051f052daab8780"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/veta/releases/download/v0.4.0/veta-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7937ef2e455053ded55734f928d181c0e54ea7859b215f5e51e993de122904e8"
    end
    on_arm do
      url "https://github.com/andreasjansson/veta/releases/download/v0.4.0/veta-v0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "09b0f3033a95359f43ee1604710b4b1bc8a5da6011bf62496573345cf0d2ca84"
    end
  end

  def install
    bin.install "veta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/veta --version")
  end
end
