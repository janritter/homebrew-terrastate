# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.11.3/darwin_amd64_terrastate"
      sha256 "1805eb5f0b298be73cd8f640d1043e869851c3b7532cb0eb58ce1c917a4de87e"
      version "1.11.3"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.11.3/linux_amd64_terrastate"
      sha256 "5d68c21365651d7f1ccfcb6e46ad4e76f67f609f37923eda57ad5c34c89f0bab"
      version "1.11.3"
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