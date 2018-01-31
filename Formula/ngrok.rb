class Ngrok < Formula
  desc "expose a local server behind a NAT or firewall to the internet"
  homepage "https://ngrok.com"
  version "2.2.8"

  if MacOS.prefer_64_bit?
    url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-#{version}-linux-amd64.zip"
    sha256 "ff5926b1c141dbe9a005b642a10d819fc498a069d69588767a18349c521839dd"
  else
    url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-#{version}-linux-386.zip"
    sha256 "120f3fc20ba376042d1eed56545de75e86435fece02c1a76bcbc40efccbe9ca7"
  end

  bottle :unneeded

  def install
    libexec.install Dir["*"]
    bin.install_symlink("#{libexec}/ngrok" => "ngrok")
  end

  def caveats; <<~EOS
    Executable is linked as "ngrok".
    For more usage information, see "ngrok help".
    EOS
  end

  test do
    assert_equal "ngrok version #{version}\n", shell_output("#{bin}/ngrok version")
  end
end
