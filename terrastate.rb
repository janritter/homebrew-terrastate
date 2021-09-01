# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.9.0/darwin_amd64_terrastate"
      sha256 "fcc4643f3a149db91b145af435af8dff4d8e43cdb00e8de1931d39dc86c5927b"
      version "1.9.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.9.0/linux_amd64_terrastate"
      sha256 "1d2dc981b0608e92e08ff4d04b0b5128d6196938f8b59d84b941a6c2b0246b36"
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