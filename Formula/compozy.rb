class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.6.0/compozy_darwin_arm64.tar.gz"
      sha256 "385200121f1725b3ca7ed6452123f9f2504aa6bc6bf9e8e60b09e96656500f9c"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.6.0/compozy_darwin_x86_64.tar.gz"
      sha256 "fd6e161c6b58f9ab22051f21cef6077682adc7db18d6737099d2150341bb8ac1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.6.0/compozy_linux_arm64.tar.gz"
      sha256 "8761b628fbca027bc4600bce35c577682ba1c8125ccfe796a3088d6ac8095413"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.6.0/compozy_linux_x86_64.tar.gz"
      sha256 "a4c98d97ce74d72969ef7a6f4ff9fee86333735b039484270e14ddfe2c806379"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
