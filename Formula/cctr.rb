class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.12.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.12.1/cctr-v0.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "20b8554855fdd832d659b9b1601659c58ac1d0a0a8ba58e71c7aa04ace9f9366"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.12.1/cctr-v0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "422402465c6c21e862b58d9fc88276d16698c4bed7fc6a66a1efc724f8568916"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.12.1/cctr-v0.12.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ed9c76e9448e3bd490a55d0bc07527e446af1be29c71ae7af582205e0aa241b5"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.12.1/cctr-v0.12.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0f2bdfb71a47072b94eb8acb20fac1a7000c3ac04dbbc3a3b3eba52470122647"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
