class Ricochet < Formula
  desc "Anonymous instant messaging for real privacy"
  homepage "https://ricochet.im/"
  version "1.1.4"

  if MacOS.prefer_64_bit?
    url "https://github.com/ricochet-im/ricochet/releases/download/v#{version}/ricochet-#{version}-linux-x86_64.tar.bz2"
    sha256 "60880482bc9a24e1ffaa56f016b5dcd37a9829af076a983a7637beefff4d2ab3"
  else
    url "https://github.com/ricochet-im/ricochet/releases/download/v#{version}/ricochet-#{version}-linux-i686.tar.bz2"
    sha256 "c700cc19e00b81c040efda8671afe6a16e0695ab42bf8ddaee04fd8398a38bf4"
  end

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink("#{libexec}/ricochet" => "ricochet")
  end

  def caveats; <<~EOS
    Executable is linked as "ricochet".
    EOS
  end
end
