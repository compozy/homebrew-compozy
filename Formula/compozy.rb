class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.4.4/compozy_darwin_arm64.tar.gz"
      sha256 "7fd90ee97ff0ac906979230b2f2ba498a541a0031b4cdbae808bab8ec50d710d"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.4.4/compozy_darwin_x86_64.tar.gz"
      sha256 "8496dce591599f30c1365236255f0019ccdd9d72333fea9d46d56ef8d707d47e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.4.4/compozy_linux_arm64.tar.gz"
      sha256 "d502a43a7e3a7e13910b5dd6c6196785d7341018299393d01914a65f97b525cd"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.4.4/compozy_linux_x86_64.tar.gz"
      sha256 "ea696b2893549f573c051d57613931aabeeb4632db1ff8bf1a97509d3e08bb36"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
