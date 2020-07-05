# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.5.0/darwin_amd64_terrastate"
      sha256 "b414af9b65ea86801b8a404a4b08dee4520bd5554bedd1e5b2c0daaba1637141"
      version "1.5.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.5.0/linux_amd64_terrastate"
      sha256 "19535fbc25b7ca3ec79a5cb985858a1b5b10f16597f7569e1571e5ada7b4f6c8"
      version "1.5.0"
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