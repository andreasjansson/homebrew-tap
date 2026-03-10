class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.31.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.31.0/cctr-v0.31.0-x86_64-apple-darwin.tar.gz"
      sha256 "532af2b8a9c2d17c8d6283eb452d7eb487dec1fad9e3bb76295b945217be5f57"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.31.0/cctr-v0.31.0-aarch64-apple-darwin.tar.gz"
      sha256 "b4c5ef7183b98f49878962f2369ae7baa8afd6bcebac87a00856d275d4152b21"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.31.0/cctr-v0.31.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5c7439b5438e46ce43eeedc9a535f27896848f5cb6135c2035e5a230e09ca597"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.31.0/cctr-v0.31.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "36cfef3e463f36e60e04ffbebf4d7fa160ee75c318e358c669a3c96d364e4216"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
