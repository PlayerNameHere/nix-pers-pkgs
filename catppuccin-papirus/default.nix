{
  inputs,
  pers-pkgs,
  papirus-icon-theme,
  color ? null,
  ...
}:
(papirus-icon-theme.overrideAttrs (old: {
  postUnpack = ''
    cp -r --no-preserve=mode ${inputs.catppuccin-papirus-folders}/src/* "$sourceRoot"/Papirus
  '';
}))
.override {
  inherit color;
  papirus-folders = pers-pkgs.catppuccin-papirus-folders;
}
