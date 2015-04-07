class Mpp < Formula
  url "https://github.com/foca/mpp/archive/v0.2.0.tar.gz"
  sha256 "bd4356e415fe451b93600330cab900fa9f1a7b9121cc8ca4bf835435d446cbd3"

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
