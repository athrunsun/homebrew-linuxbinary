class JuliaBinary < Formula
  desc "The Julia programming language"
  homepage "https://julialang.org"
  version "0.6.0"

  if MacOS.prefer_64_bit?
    url "https://julialang-s3.julialang.org/bin/linux/x64/0.6/julia-0.6.0-linux-x86_64.tar.gz"
    sha256 "3a27ea78b06f46701dc4274820d9853789db205bce56afdc7147f7bd6fa83e41"
  else
    url "https://julialang-s3.julialang.org/bin/linux/x86/0.6/julia-0.6.0-linux-i686.tar.gz"
    sha256 "bfebd2ef38c25ce72dd6661cdd8a6f509800492a4d250c2908f83e791c0a444a"
  end

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end
end
