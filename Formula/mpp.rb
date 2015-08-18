class Mpp < Formula
  url "https://github.com/foca/mpp/archive/v0.2.1.tar.gz"
  sha256 "e79a8bf57f0b512173882e3aba638e10a248f58ebce6de48e198ed8b1cb3ae81"

  homepage "https://github.com/foca/mpp"

  depends_on "go" => :build
  depends_on "gpm" => :build

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "mpp", "--version"
  end
end
