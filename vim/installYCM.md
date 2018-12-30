- install python, cmake, devtools in cadenv
- install ycm plugin in vim
- download LLVM and clang pre-build package to third_party/ycmd/clang_archives
  choose aarch64-linux-gnu distribution for red hat OS
  tar -xJf clang-llvm-7.0.0-....tar.xz
- generate makefiles using cmake (deviate from YCM website, due to CMake could not find python path)

cmake -G 'Unix Makefiles' -DPATH_TO_LLVM_ROOT=~/dotfiles/vim/vimfiles/bundle/youcompleteme/third_party/ycmd/clang_archives/clang+llvm-7.0.0-aarch64-linux-gnu -DPYTHON_INCLUDE_DIR=$(python -c "from distutils.sysconfig import get_python_inc; print(get_python_inc())") -DPYTHON_LIBRARY=$(python -c "import distutils.sysconfig as sysconfig; print(sysconfig.get_config_var('LIBDIR'))") . ~/dotfiles/vim/vimfiles/bundle/youcompleteme/third_party/ycmd/cpp

- manually download libclang package and put in third_party/ycmd/clang_archives
https://dl.bintray.com/micbou/libclang/
it does not work with proxy
- use install.py script
python install.py --clang-completer

