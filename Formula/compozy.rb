class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.5.3/compozy_darwin_arm64.tar.gz"
      sha256 "b8d278d5bcde54d49015bcd99f2fa529e5c14342daef9b68cb907144efc452e2"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.5.3/compozy_darwin_x86_64.tar.gz"
      sha256 "9a44e07998e21c04c994e905784c76fe6af00d4627405d88fc099f9779422f4b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.5.3/compozy_linux_arm64.tar.gz"
      sha256 "8a66348a4de8919b1b5bf002b118707aad17d113d3e4b1226f94f794c4c5c3af"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.5.3/compozy_linux_x86_64.tar.gz"
      sha256 "7f2f7b9f750337c53761c211bc10d71e5e89c1ddad5270f42a42c3cd7ecde6fe"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
