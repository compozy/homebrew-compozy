class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.7.1/compozy_darwin_arm64.tar.gz"
      sha256 "47c38d49c5979a96b5a80af3b7fb3618479f747d8a172113ecd988050a95696e"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.7.1/compozy_darwin_x86_64.tar.gz"
      sha256 "41372bb928613c11d07bf7f240ece67e2c4bc626d208a31d54e5133b2991bb21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.7.1/compozy_linux_arm64.tar.gz"
      sha256 "562b2be48a950320e5233b64fee98636f30cc29aef24e776841d37b59c496e7d"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.7.1/compozy_linux_x86_64.tar.gz"
      sha256 "5bc1fcc5a0b59dc38b7e1b491e66982db65c8d527717a0e3f923fa425ec1d77b"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
