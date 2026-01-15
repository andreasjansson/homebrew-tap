class Leta < Formula
  desc "LSP Enabled Tools for Agents - fast semantic code navigation"
  homepage "https://github.com/andreasjansson/leta"
  version "0.11.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.11.3/leta-v0.11.3-x86_64-apple-darwin.tar.gz"
      sha256 "c491b9f05dd638098280b27f6f42c39fad9a632b48b337bc9f48ee7239078b31"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.11.3/leta-v0.11.3-aarch64-apple-darwin.tar.gz"
      sha256 "8c4773ec846d8a5d857a24fffba9e9c6e8d27faebae24df9b241a8cc4fe94ccf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.11.3/leta-v0.11.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "300ed85c4cd1572dd4f3d4d34b91bc4049b4cc30b79dd38582442bf31562f084"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.11.3/leta-v0.11.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "91d93db61b9fcf7e1cdb27c7bc0d29481ef876709b503d2744ca988181417f2d"
    end
  end

  def install
    bin.install "leta"
    bin.install "leta-daemon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/leta --version")
  end
end
