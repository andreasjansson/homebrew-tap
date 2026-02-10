class Cctr < Formula
  desc "CLI Corpus Test Runner"
  homepage "https://github.com/andreasjansson/cctr"
  version "0.28.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.28.0/cctr-v0.28.0-x86_64-apple-darwin.tar.gz"
      sha256 "adeaecb4b1378779a3b36c8d0167d22d1f240af795d8444092c586680af61866"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.28.0/cctr-v0.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "a29d899d80895a4189eac66625998bc7f2ea9a2378da7b2b31411ad80d3f4b9d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.28.0/cctr-v0.28.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d9c2acff59e2cd80096ec22e2d5b2a54ca7e109643c48619a8e2709b426b5c7e"
    end
    on_arm do
      url "https://github.com/andreasjansson/cctr/releases/download/v0.28.0/cctr-v0.28.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7bad4849ed8cb0027002883b45887b31aabee4046fe8a95d86f857c8ef634135"
    end
  end

  def install
    bin.install "cctr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cctr --version")
  end
end
