class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.4.1/compozy_darwin_arm64.tar.gz"
      sha256 "fa002927cc9f6e6a2b81640314628e2b49a5e7a32a1663390f2a5a41b8c62b44"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.4.1/compozy_darwin_x86_64.tar.gz"
      sha256 "6b30e16172ab4fd67f9e48f2a3045a63b192641b124748d41e517cf634ee6ba3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.4.1/compozy_linux_arm64.tar.gz"
      sha256 "42ad778ef649fed145f956d1818c4dd1da45508795ecbf2e8c17adc817f2cd0c"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.4.1/compozy_linux_x86_64.tar.gz"
      sha256 "ae5c2006da5be8270c72be66a2fda1bfa16a5de3194ace21074bc1e4ee784330"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
