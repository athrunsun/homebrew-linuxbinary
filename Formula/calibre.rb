class Calibre < Formula
  desc "A powerful and easy to use e-book manager"
  homepage "https://calibre-ebook.com/"
  version "3.16.0"

  if MacOS.prefer_64_bit?
    url "https://github.com/kovidgoyal/calibre/releases/download/v#{version}/calibre-#{version}-x86_64.txz"
    sha256 "f23f14b8ad4235dd4959a620906b244a4c154ddc35701b90c0a3b111424e02a9"
  else
    url "https://github.com/kovidgoyal/calibre/releases/download/v#{version}/calibre-#{version}-i686.txz"
    sha256 "35586b8760725b827a3124f1fd6ec5fbc45bd72c0f6525eccb39bd11ed469e8d"
  end

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink("#{libexec}/calibre" => "calibre")
  end

  def caveats; <<~EOS
    Executable is linked as "calibre".
    For more usage information, see "calibre --help".
    EOS
  end
end
