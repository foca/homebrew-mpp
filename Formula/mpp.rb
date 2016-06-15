class Mpp < Formula
  version "1.0.0.rc3"
  url "https://github.com/foca/mpp/archive/v#{version}.tar.gz"
  sha256 "d6ed9c9ea2c29596f011895ada596c0330d7a38eeab1c39282652b57b9cc95ec"

  homepage "https://github.com/foca/mpp"
  desc "mpp is a mini pre-processor"

  depends_on "crystal-lang" => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "mpp", "--version"
  end
end
