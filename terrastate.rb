# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.10.0/darwin_amd64_terrastate"
      sha256 "e76b9cab53f5d0a8260cf4a6d062628b47821cdccca6ceb1771e71f54cc8f3a7"
      version "1.10.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.10.0/linux_amd64_terrastate"
      sha256 "d335a9a2589f3a47283fbc26fb57caf22ec79450562088dfb776b525f3591239"
      version "1.10.0"
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