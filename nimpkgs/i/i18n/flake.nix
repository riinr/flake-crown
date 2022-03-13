{
  description = ''Bring a gettext-like internationalisation module to Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."i18n-master".dir   = "master";
  inputs."i18n-master".owner = "nim-nix-pkgs";
  inputs."i18n-master".ref   = "master";
  inputs."i18n-master".repo  = "i18n";
  inputs."i18n-master".type  = "github";
  inputs."i18n-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."i18n-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}