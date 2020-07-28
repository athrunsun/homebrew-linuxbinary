class JuliaBinary < Formula
  desc "The Julia programming language"
  homepage "https://julialang.org"
  version "1.4.2"

  option "with-bfsu-mirror", "Download from https://mirrors.bfsu.edu.cn, use this option if you're in mainland China for a faster downloading speed."

    if build.with? "bfsu-mirror"
        url "https://mirrors.bfsu.edu.cn/julia-releases/bin/linux/x64/1.4/julia-1.4.2-linux-x86_64.tar.gz"
    else
        url "https://julialang-s3.julialang.org/bin/linux/x64/1.4/julia-1.4.2-linux-x86_64.tar.gz"
    end

    sha256 "d77311be23260710e89700d0b1113eecf421d6cf31a9cebad3f6bdd606165c28"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
