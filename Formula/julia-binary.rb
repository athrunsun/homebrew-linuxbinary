class JuliaBinary < Formula
  desc "The Julia programming language"
  homepage "https://julialang.org"
  version "1.5"

  url "https://mirrors.bfsu.edu.cn/julia-releases/bin/linux/x64/1.5/julia-1.5-latest-linux-x86_64.tar.gz"
  sha256 "A4EA36AA86269116992393067E5AFC182707CB4F26EAC9FDDDA08E04A9C7B94D"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
