class Bstrap < Formula
  desc "Command-line utility for setting up development .env files"
  homepage "https://github.com/jclem/bstrap"
  url "https://github.com/jclem/bstrap/releases/download/v0.1.0/bstrap-0.1.0-osx.tgz"
  sha256 "f909ceee85c126c35b8945c8d1f6ab8e499c757fd1027fcc509a267bd81e2b1c"

  depends_on "pkg-config" => :build
  depends_on "libatomic_ops" => :build
  depends_on "libevent"
  depends_on "bdw-gc"
  depends_on "pcre"

  def install
    bin.install "bstrap"
  end

  test do
    system "#{bin}/bstrap", "--help"
  end
end
