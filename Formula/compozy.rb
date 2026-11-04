class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.5.2/compozy_darwin_arm64.tar.gz"
      sha256 "5c9cfbc4dd5273c6a5bb06003a079b5fb1df3e23d2b4689266e44c534b4c7d05"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.5.2/compozy_darwin_x86_64.tar.gz"
      sha256 "3104c28cfa4e51e1bc61534a81f87169ffcebc41e7c605c54175d87ebb52bb89"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.5.2/compozy_linux_arm64.tar.gz"
      sha256 "59e1648c9dbb44f2f9a5a0597d4bea93bc88599ef38d9b56798034d6f7fa4aa1"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.5.2/compozy_linux_x86_64.tar.gz"
      sha256 "539e690a6fc89bd25f55e91316160d6702bb11a72ce3a7c2aef928cc47074fed"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
