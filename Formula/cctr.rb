class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.16.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.16.2/cctr-v0.16.2-x86_64-apple-darwin.tar.gz"
      sha256 "df1f91760e9f983ad7462d3226ec211427304f64f78c2facff5ffc4fecb556cc"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.16.2/cctr-v0.16.2-aarch64-apple-darwin.tar.gz"
      sha256 "07ce8a9cc37aa1cf77c10908f735322f7f43d16c7ebd381d96452ab97d15dafe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.16.2/cctr-v0.16.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "22de2618b6c2b4d0b1d8b877a39dd09129c44c8e522ae5d5078577e81cac480a"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.16.2/cctr-v0.16.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "46dd35015a0ad1a00c46c76be4babc5ad6331948e9fded1134a5a7cf27682dfd"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
