# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.11.0/darwin_amd64_terrastate"
      sha256 "46fa2a079a2c47f5224bba9918256e9724a0c65692a15e43bc298c872bec8d0e"
      version "1.11.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.11.0/linux_amd64_terrastate"
      sha256 "7aa2a036b5158b556053d6c3fa9d7bba5f2a99a9a1f5400a548b50df89cf4ec5"
      version "1.11.0"
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