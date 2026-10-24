class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.4.0/compozy_darwin_arm64.tar.gz"
      sha256 "fba380310068a32460616fb4a19250bf080baa59c5513049d7e75423253c1fa2"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.4.0/compozy_darwin_x86_64.tar.gz"
      sha256 "891c1b1a738f153d6e2115216846db5e514401582ca6e49e0921b52164f989fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.4.0/compozy_linux_arm64.tar.gz"
      sha256 "86fdf1c4c203f90171a5ba8d987f3cb698412e542a64c71189bffeb5b36df060"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.4.0/compozy_linux_x86_64.tar.gz"
      sha256 "a4394a1b7bd5141a4083b2ca662b227ffb2fc26a43e492f04917e7d9787b1d8b"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
