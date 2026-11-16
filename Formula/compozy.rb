class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.7.2/compozy_darwin_arm64.tar.gz"
      sha256 "bd3a50a764816c46e2cce29d97a784b3097e3b3d28bf425cd389e733abf7d808"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.7.2/compozy_darwin_x86_64.tar.gz"
      sha256 "a799beb068073c94f7629529fd554fd07aa0f6dae455cbec1aa5560242e82853"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.7.2/compozy_linux_arm64.tar.gz"
      sha256 "1c86e05f13eede20fba942d26f5cdef94a98c22015935da62d19895843a68151"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.7.2/compozy_linux_x86_64.tar.gz"
      sha256 "9e927e11757d54ebb82343c91ff2c3735ab4fcecbd751e8b5724b810000146e1"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
