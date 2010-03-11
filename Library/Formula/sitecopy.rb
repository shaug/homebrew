require 'formula'

class Sitecopy <Formula
  url 'http://www.manyfish.co.uk/sitecopy/sitecopy-0.16.6.tar.gz'
  homepage 'http://www.manyfish.co.uk/sitecopy/'
  md5 'b3aeb5a5f00af3db90b408e8c32a6c01'

# depends_on 'cmake'

  def install
    system "./configure", "--prefix=#{prefix}", "--disable-debug", "--disable-dependency-tracking", "--with-libxml2", "--with-ssl"
#   system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
