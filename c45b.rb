class C45b < Formula
  desc "Tool for communicating with the Chip45 AVR bootloader"
  homepage "https://github.com/bullestock/c45b"
  head "https://github.com/bullestock/c45b.git"

  depends_on "qt@4" => :build

  def install
    system "qmake", "PREFIX=#{prefix}"
    system "make"
    system "make", "install"
    bin.install "console/c45b.app/Contents/MacOS/c45b"
  end

  test do
    system "false"
  end
end
