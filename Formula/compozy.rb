class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.5.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.5.5/compozy_darwin_arm64.tar.gz"
      sha256 "8c6eb1f06026802a793d1c25de2219358d6998d3464ea435f3a30cac6e1e638c"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.5.5/compozy_darwin_x86_64.tar.gz"
      sha256 "10e96b204de1ea43888a6f70e2eb9a262d5655cebbad1090e7cc57285e5b4cb3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.5.5/compozy_linux_arm64.tar.gz"
      sha256 "b4a752b36a5652527d02ce960eb5e2044146eafba7a18a1731ef8956e7ee4650"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.5.5/compozy_linux_x86_64.tar.gz"
      sha256 "c4b46ca3c3d584c2a05b6bb11183106a1b7258df7d4bf51d88da3fc77579c353"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
