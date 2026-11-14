class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.7.0/compozy_darwin_arm64.tar.gz"
      sha256 "73d7d52474d68b4ee55168199bf558463b4b7e7a3d2163d19e69e1044ec8c467"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.7.0/compozy_darwin_x86_64.tar.gz"
      sha256 "059e63af909b8490f1d9b8f5cf01c1822784406c6e6c2644614e943740497104"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.7.0/compozy_linux_arm64.tar.gz"
      sha256 "5ae6a43c8caf11b8d52fde186093e1088d332ff575b108948c45395ba1eff36c"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.7.0/compozy_linux_x86_64.tar.gz"
      sha256 "af26fe456ddd865a041552fd3484fe3c2ac219bac023e027e002798db992f725"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
