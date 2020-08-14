class Calibre < Formula
  desc "A powerful and easy to use e-book manager"
  homepage "https://calibre-ebook.com/"
  version "4.22.0"

  url "https://github.com/kovidgoyal/calibre/releases/download/v#{version}/calibre-#{version}-x86_64.txz"
  sha256 "2c0cc1a0d5e9d1396e4dac5c105d60cdc6ef01f8336410e527b8d3e7da6e530e"

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
