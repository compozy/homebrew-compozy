class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.4.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.4.6/compozy_darwin_arm64.tar.gz"
      sha256 "50210d7e4a807dd44f3a4f7402f7ab08c83864ae904fb8471ca56fd3972ee19f"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.4.6/compozy_darwin_x86_64.tar.gz"
      sha256 "184f28ce293aba24c04092e1bfc43d127907a09808710b5694e508307e3e0db4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.4.6/compozy_linux_arm64.tar.gz"
      sha256 "b893f7230c004ccba27494d2ec065bbbd614001d8d9573e84b4b6cb68b37b181"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.4.6/compozy_linux_x86_64.tar.gz"
      sha256 "8853a30ae4513f3dc2f37bba3ffe631dec06c5a0343b7cba2ddd815f774e7528"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
