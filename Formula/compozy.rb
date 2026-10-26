class Compozy < Formula
  desc "Create, automate, and supervise agent work"
  homepage "https://compozy.com"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.4.2/compozy_darwin_arm64.tar.gz"
      sha256 "238cabdefb96f8c17eed65afb9052993470e46b7826ccb0d087f86c249968493"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.4.2/compozy_darwin_x86_64.tar.gz"
      sha256 "5197715ad1cb7d3c2dde7314c3b36943a3822b679ed035a475b35ecc1d2c5c98"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/compozy/compozy/releases/download/v0.4.2/compozy_linux_arm64.tar.gz"
      sha256 "84f6d1afd7bb8658972bf9c863e37c0d3b97a1b9022998606f7434d06118f05c"
    else
      url "https://github.com/compozy/compozy/releases/download/v0.4.2/compozy_linux_x86_64.tar.gz"
      sha256 "dc644965fee86684fab766ff906de581ff4aedeb6b28c2baf0854de008a11b4c"
    end
  end

  def install
    bin.install "compozy"
  end

  test do
    system "#{bin}/compozy", "version"
  end
end
