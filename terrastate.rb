# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Terrastate < Formula
    desc "Tool to manage multiple state backends in Terraform - Allows Multi account setups"
    if OS.mac?
      url "https://github.com/janritter/terrastate/releases/download/1.8.0/darwin_amd64_terrastate"
      sha256 "bb7ec2adfb07276b967b615647f8fc2fc24e341da8997ee0f93e61da747a3ac4"
      version "1.8.0"
    elsif OS.linux?
      url "https://github.com/janritter/terrastate/releases/download/1.8.0/linux_amd64_terrastate"
      sha256 "c315ff21557f8375a6aa55edd76196968bcf467b62cba24e2d50e83447394266"
      version "1.8.0"
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