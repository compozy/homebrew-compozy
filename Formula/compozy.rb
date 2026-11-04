class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.5.1/compozy_darwin_arm64.tar.gz"
      sha256 "6e03300e95b8cf0c5ab7993d70c03eb3637698dadc5f72fd50d6c15f8f9b06ce"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.5.1/compozy_darwin_x86_64.tar.gz"
      sha256 "d67859960a20931b22a07653d7f139d398287ba347548a4d930ff1dc56ae03e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.5.1/compozy_linux_arm64.tar.gz"
      sha256 "1930950ccd0671f8d5bf5f3921beb7f6339542d4adec6e8f3ea49fe3ca8260ef"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.5.1/compozy_linux_x86_64.tar.gz"
      sha256 "0c93cd69352245cdc8c08ee3deb43e322fbf3772c8040a8cf6242c96ec33dd15"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
