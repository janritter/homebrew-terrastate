# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.2.2/darwin_amd64_terrastate"
      sha256 "5c3d2262598a14e0f3bfb977378344cd9fae957801ff0712f91d28fcd613d5ee"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.2.2/linux_amd64_terrastate"
      sha256 "5e0ded25511c5b9761f145967c452e33e14d698884c332b7571eb360de7d1690"
    end

    def install
      if OS.mac?
        bin.install "darwin_amd64_terrastate"
        mv bin/"darwin_amd64_terrastate", bin/"terrastate"
      elsif OS.linux?
        bin.install "linux_amd64_terrastate"
        mv bin/"linux_amd64_terrastate", bin/"terrastate"
      end
    end
  
    test do
      system "false"
    end
  end