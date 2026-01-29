class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.23.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.23.2/cctr-v0.23.2-x86_64-apple-darwin.tar.gz"
      sha256 "3668f334b3004ee13c78ad2044d4b026aaa7b50728e76d8d7a71bc8452455809"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.23.2/cctr-v0.23.2-aarch64-apple-darwin.tar.gz"
      sha256 "96e280752db73b9aeca3868edb6f8754fa203b658dba491dbf8cdbf52e622aca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.23.2/cctr-v0.23.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "31837cba53566815b41dfa3c37b5ac47e248f7d5503e371cd4f6a26919604f2d"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.23.2/cctr-v0.23.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6de53294bf8deafd80653d7be5670d840eb51e04d872b660818168a91b78d9d4"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
