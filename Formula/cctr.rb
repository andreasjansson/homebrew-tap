class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.8.0/cctr-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "f698270b1f12c2debdd9c540642a52af0b441241b824ef8845854e2e46747e2f"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.8.0/cctr-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "5261f2086840956b5a7cb353174419110b6e1cdb5d7f6df6f1d22b8833791eae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.8.0/cctr-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3160012020319f9584bea7c2240c68e7da74b4624a59c3a22559e8838a92fa71"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.8.0/cctr-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7ce314dc7986162abd07f462566c5367762bbac99b536e46ecd80974f58d6fea"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
