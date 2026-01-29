class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.21.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.21.0/cctr-v0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "cea5f1716fedce4f7d9d064429672e001009e989161631b7175188ee59283ed0"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.21.0/cctr-v0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "79a465bfde0f3e3d1cbe1520d7bb3d30ec6bf70fd8e855ede36c334c9ba21a85"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.21.0/cctr-v0.21.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2340ab30adf572daa29b54c0b1da3c31b0adcb64bc3e33e55cb99953c749f6b3"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.21.0/cctr-v0.21.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ec9c48ff6066c59865f3605619998e974fd5db8af41ce494f03a29233394a8db"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
