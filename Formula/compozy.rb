class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.7.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.7.5/compozy_darwin_arm64.tar.gz"
      sha256 "dad892ee6146cca8b2d3618f3e651af1ab41be1a0a185eaf586b7f31d59cb0d8"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.7.5/compozy_darwin_x86_64.tar.gz"
      sha256 "2c8c29b727495c1cf19ea06a717795f3d7b6b654cd8fcca69785996a38b1b6ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.7.5/compozy_linux_arm64.tar.gz"
      sha256 "29b25b6a4d510ea5e95e6f3e3e4ae9215cd88cb7c7f9fbf0deb9185cb05d57d7"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.7.5/compozy_linux_x86_64.tar.gz"
      sha256 "82aeefa6fa3220f37981bcff4989c267cb2c0501f81059fdcc5e231adeaf53c1"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
