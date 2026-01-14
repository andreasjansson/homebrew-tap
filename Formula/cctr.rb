class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.7.0/cctr-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "2356dea0d0207c271a6e0c88f1016c9f33ae56464db00d10c808d3ab3476dcd8"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.7.0/cctr-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "275758b6a9d77b5835609f127cf96f744af052e6c3df980bb0553922473a2486"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.7.0/cctr-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ab9205047dcaeaf4811b363cdd60dca801191aced9dea5d964fb126de36bb50d"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.7.0/cctr-v0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "098fd29fcc4cbd4882682c37279d8882f3cb1017bfa637b58b000c85fb456c4f"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
