class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.4.3/compozy_darwin_arm64.tar.gz"
      sha256 "ae426d393a1c3654ce8e3b7a839ad5fb3048e31c1e6cdba7d04969d502df997b"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.4.3/compozy_darwin_x86_64.tar.gz"
      sha256 "b549cbef5e03fc70b0bf0376d4244b040ee83d1828114770ba2bcf1c90883ac7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.4.3/compozy_linux_arm64.tar.gz"
      sha256 "a435d747a7c6909301401b2b63721a259a37b84344b2cb4321f062a5d6f1dd55"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.4.3/compozy_linux_x86_64.tar.gz"
      sha256 "2c8acac203eb221b2dbc4707fb42b5feb15eb1dcdee9af27d87f5f6af68edb50"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
