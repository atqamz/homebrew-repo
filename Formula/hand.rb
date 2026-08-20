class Hand < Formula
  desc "Manage a fleet of coding agents"
  homepage "https://github.com/atqamz/hand"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/atqamz/hand/releases/download/v0.4.0/hand-darwin-arm64.tar.gz"
      sha256 "4fff9708217907b0c26d2809156c716c44026e562769d0ef6339254f3e7ac23c"
    else
      url "https://github.com/atqamz/hand/releases/download/v0.4.0/hand-darwin-amd64.tar.gz"
      sha256 "c231198d841fa3530f8f8f296d6e2ce0c991583235ae8a22628b224a22541227"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/atqamz/hand/releases/download/v0.4.0/hand-linux-arm64.tar.gz"
      sha256 "7a8743797a2b7c83595d45aa4c1bc7a93a519f0ac36ac289d5cffae2b2f4283c"
    else
      url "https://github.com/atqamz/hand/releases/download/v0.4.0/hand-linux-amd64.tar.gz"
      sha256 "5c4ef9d2379969dc2b63de829f4b20707932833844fa4e51950411d94f8770a7"
    end
  end

  def install
    bin.install "hand"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/hand --version").strip
  end
end
