class Leta < Formula
  desc "LSP Enabled Tools for Agents - fast semantic code navigation"
  homepage "https://github.com/andreasjansson/leta"
  version "0.11.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.11.2/leta-v0.11.2-x86_64-apple-darwin.tar.gz"
      sha256 "4761bacb2f0223a588f72edf16e6a8bbe15a5c5643f74d2a3167bb7c71902841"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.11.2/leta-v0.11.2-aarch64-apple-darwin.tar.gz"
      sha256 "491d1367191239fdea6bc43c070a9274cbb5416c091724ece5306403969971ec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/andreasjansson/leta/releases/download/v0.11.2/leta-v0.11.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc16d4162a050c6c6c18f8883bb3538d9a25949f03f9a5e1770765836f0718c0"
    end
    on_arm do
      url "https://github.com/andreasjansson/leta/releases/download/v0.11.2/leta-v0.11.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dcbc4ba318c098251defb807ee13425ffe7986aff905c7a9b32435250bdc4b01"
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
