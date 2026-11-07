class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.5.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.5.4/compozy_darwin_arm64.tar.gz"
      sha256 "f2d8653f63d92839d62ed854c40627bf1efc9eab7b0424a4b232a5df061ba548"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.5.4/compozy_darwin_x86_64.tar.gz"
      sha256 "aa6d45fc37334f5fdddcc4d8ede8d5942c0fd85166de1642e812fb30cb620434"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.5.4/compozy_linux_arm64.tar.gz"
      sha256 "71598948708aac8660f48d4c75a30bad7f2dd1466952cc99f4847bb43dc3d671"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.5.4/compozy_linux_x86_64.tar.gz"
      sha256 "719b78a1798e19be515b07efc938f60aa1a7dd171669eafef3e3d267d90048ce"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
