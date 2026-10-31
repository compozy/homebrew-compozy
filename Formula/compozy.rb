class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.4.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.4.7/compozy_darwin_arm64.tar.gz"
      sha256 "404bcad4cd2f9421f1a515a4f4cfd60703f6e908d87ead22e30300768caa4ee1"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.4.7/compozy_darwin_x86_64.tar.gz"
      sha256 "15dceadb6ee00ef1831a8c4f3ed50858d45a0dd6f0001cdc928ae75e5bd47554"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.4.7/compozy_linux_arm64.tar.gz"
      sha256 "f9db3bf38b6eb57771b30a4959debce7d58960eb6cbe4ae5694bb7dc626efe91"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.4.7/compozy_linux_x86_64.tar.gz"
      sha256 "63eb4c9d2caa70f02e72bca68b0fe703a235eecb4e7287d8d67460b238c7b1e8"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
