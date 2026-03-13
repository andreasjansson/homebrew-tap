class Plwr < Formula
  desc "Clean CLI for Playwright browser automation with CSS selectors"
  homepage "https://github.com/andreasjansson/plwr"
  version "0.19.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.19.1/plwr-v0.19.1-x86_64-apple-darwin.tar.gz"
      sha256 "7265e8e529f0d34732251510a43f4875c67e8ff9a02a420c05c8ef34e4124042"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.19.1/plwr-v0.19.1-aarch64-apple-darwin.tar.gz"
      sha256 "44a2e7a0175385842cb3058d09f78b4d8997110c80fd6c8847a7977d47e58100"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.19.1/plwr-v0.19.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "760c73f2ad0668644be2df019637be07cde515cfc3f91581e69a0e35f0aff0b4"
    end
    on_arm do
      url "https://github.com/andreasjansson/plwr/releases/download/v0.19.1/plwr-v0.19.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4e82fe4b8af8e41f8db5922a0c75861acf5c09958e72c7317aa6ce862c00e159"
    end
  end

  def install
    bin.install "plwr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plwr --version")
  end
end
