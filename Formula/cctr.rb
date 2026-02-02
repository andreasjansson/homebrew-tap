class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.27.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.27.0/cctr-v0.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "eb56209ba2c62e341c5b4046545ef935bfd51835ae4a00736d0b4ed4e7795c9d"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.27.0/cctr-v0.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "ba421ff4b41a730aa5d4cc9806764c231ef5d7572222291be0a175bd8c1e17ef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.27.0/cctr-v0.27.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b3329b860e41be6d9d9a651069533bc9d5f3cfd88abdbbbde7a49fcb64662a65"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.27.0/cctr-v0.27.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c0a0d271d84d18db683ece7d083fa8ff57daa8b094d16ddb0165e95663ff92f"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
