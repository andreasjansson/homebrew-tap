class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.13.0/cctr-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "63766dd339eac42934769da61effccec81736f81292b2ae47f2f79f23313c687"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.13.0/cctr-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "6bf948f55d1a77903dee37fc716d0de633fbbb0ad06f82736cac07a273244548"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.13.0/cctr-v0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0f7043a0b7e20a881e854a21b7e8498ea9b793a55aa196e1fd115892129a53cb"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.13.0/cctr-v0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a3ae1019f6fbf75f6515eb827755c707c349c5bb040577d7cf9d6cb4109d806b"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
