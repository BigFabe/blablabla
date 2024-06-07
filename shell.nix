{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    # nativeBuildInputs is usually what you want -- tools you need to run
    nativeBuildInputs = with pkgs.buildPackages; [ 
            pkg-config
    meson
    ninja
    doxygen
    graphviz
    libevdev
    mtdev
    libwacom
    (python3.withPackages (pp: with pp; [
      pp.libevdev # already in scope
      pyudev
      pyyaml
      setuptools
    ]))
    udev
    check
    valgrind
    cairo
    glib
    gtk3
    cmake
    gtk4
    ];
}
