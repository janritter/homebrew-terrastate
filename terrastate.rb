# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.6.1/darwin_amd64_terrastate"
      sha256 "87a03d3731066fd18bc1911eb0c485939b6e99616dfc25f69591d583e12236c5"
      version "1.6.1"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.6.1/linux_amd64_terrastate"
      sha256 "fcc26e08608112e6b86e5b0700279b959bcc84b66b4b56a4dad0160ad7fa8798"
      version "1.6.1"
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