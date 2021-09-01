# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.9.0/darwin_amd64_terrastate"
      sha256 "74bba0de4a01825b114525b9e7284d07516038d963e587f405369f76101f9c59"
      version "1.9.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.9.0/linux_amd64_terrastate"
      sha256 "bccb58150cda9aabc3a03957b9a0ede1337f8d962bd3a6c7cf5884a1074be553"
      version "1.9.0"
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