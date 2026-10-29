class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.4.5/compozy_darwin_arm64.tar.gz"
      sha256 "f478050952d3204ef77f44858a770b7a2a9b0f44d64e8ffe6c48e18f1ef9401c"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.4.5/compozy_darwin_x86_64.tar.gz"
      sha256 "285d4411c6ae50b5e48b1a85e42afe91da973c0c90bf03e225fc4ab8c0a18594"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.4.5/compozy_linux_arm64.tar.gz"
      sha256 "d47d9983e636809bac940160f0ab9db03bfe0776bcce8bb5a630ce2922fcfc07"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.4.5/compozy_linux_x86_64.tar.gz"
      sha256 "b7dc5b23eba08dd5a6f715af6277a37e30e879f4f903f1c71a0a21d9d06c92f2"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
