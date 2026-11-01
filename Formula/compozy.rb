class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.4.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.4.8/compozy_darwin_arm64.tar.gz"
      sha256 "a1436b276ddd32c272133af753469f6d6c0761cac5fae12c940f09adfc5d8f6d"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.4.8/compozy_darwin_x86_64.tar.gz"
      sha256 "111745442eed6ea4abe63c505368632e82ebc5f42b7abfacc77448f2ff9b3387"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.4.8/compozy_linux_arm64.tar.gz"
      sha256 "6692accb8a6074e902d210435550ffc71c3c13f334f9ed8a2b543f2009d8a002"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.4.8/compozy_linux_x86_64.tar.gz"
      sha256 "3ad9207675cf19990d0cccbad276e298db241ee3f1f597e8e1d6b6a9ba7f61df"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
