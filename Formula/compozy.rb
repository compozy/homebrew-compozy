class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.7.3/compozy_darwin_arm64.tar.gz"
      sha256 "4da424960a7248327d48b6b88e0ada0eb1c26b6f81a22c49ddcaf79863e76aaa"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.7.3/compozy_darwin_x86_64.tar.gz"
      sha256 "a71de7027a847641740531dcce1f5f9c8f0e1369f000d2b75ac5a22d847d8c53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.7.3/compozy_linux_arm64.tar.gz"
      sha256 "88114a53460f29b7385a181e75d2bc49741d9a5880d5349aae5d590039c27a63"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.7.3/compozy_linux_x86_64.tar.gz"
      sha256 "daeae02b0935f16c5a20e228663aa54f50ecb6df3847be7298bf9a8f7014216e"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
