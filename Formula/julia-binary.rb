class JuliaBinary < Formula
  desc "The Julia programming language"
  homepage "https://julialang.org"
  version "0.6.1"

  url "https://julialang-s3.julialang.org/bin/linux/x64/0.6/julia-0.6.1-linux-x86_64.tar.gz"
  sha256 "d73f988b4d5889b30063f40c2f9ad4a2487f0ea87d6aa0b8ed53e789782bb323"

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
