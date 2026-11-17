class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.7.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.7.4/compozy_darwin_arm64.tar.gz"
      sha256 "0181de1089946fb2c158c908e3b2ccd803215de549a7d3989e3030e8ab77428c"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.7.4/compozy_darwin_x86_64.tar.gz"
      sha256 "eec995d141c1530e413f2ade4f575ef3d4cf82972677756197e76d9c6b969f5d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.7.4/compozy_linux_arm64.tar.gz"
      sha256 "adfc7b6bff7be6a61ec83b4dc1fa735e715b270af16db5aaf09ded24def67390"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.7.4/compozy_linux_x86_64.tar.gz"
      sha256 "5e6891e1d686cf7c80b8e5100d4b27b60405700cd8f0fed9b138e4cb64ea8858"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
