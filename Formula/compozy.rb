class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.5.0/compozy_darwin_arm64.tar.gz"
      sha256 "4617241e4e3f2df34e1aa6f3209eb9da3427f4f0ce475b56377f6f9018223189"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.5.0/compozy_darwin_x86_64.tar.gz"
      sha256 "51a624fb7efec959271f3a84a2fa2b4f6029b8652ba12e4ec90f5288d5036a87"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.5.0/compozy_linux_arm64.tar.gz"
      sha256 "ac3baa00d50235e2b10ecde454d62c9d803b4a9ad60087ad2b1545c188e0db68"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.5.0/compozy_linux_x86_64.tar.gz"
      sha256 "c6766c67ebe65761a9951df2785e7f76c057506c735184a0ab616f9f5da1a2ef"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
