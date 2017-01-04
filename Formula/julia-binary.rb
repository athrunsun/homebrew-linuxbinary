class JuliaBinary < Formula
  desc "The Julia programming language"
  homepage "https://julialang.org"
  version "0.5.0"

  if MacOS.prefer_64_bit?
    url "https://julialang.s3.amazonaws.com/bin/linux/x64/0.5/julia-0.5.0-linux-x86_64.tar.gz"
    sha256 "5b18bbfcc39b2214ce5ec5d3c186aa39dbcab0bc465415353d44762fe14d1183"
  else
    url "https://julialang.s3.amazonaws.com/bin/linux/x86/0.5/julia-0.5.0-linux-i686.tar.gz"
    sha256 "77aa539e48b260076d6e0baedb783b90c7478a88755f0671d78c7d8954ec95bf"
  end

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
