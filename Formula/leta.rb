class Leta < Formula
  desc "LSP Enabled Tools for Agents - fast semantic code navigation"
  homepage "https://github.com/andreasjansson/leta"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.10.0/leta-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "da737c0ac57ddeb14d3c7f435cc22c4327f5cabbc3c4795b8ca81f4927e7cfae"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.10.0/leta-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "95c049df05c8febce4e426e83f09c1147eb1c41e1ec6dca434a943c2b7af8bb8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.10.0/leta-v0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "74575381dd264b8d07f7309ddff40591b8d65187d0e0fd8c62bb37c819334753"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.10.0/leta-v0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "43f10188233928edfd43e55d6c9672775405299297314817a9902820a81e4a27"
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
