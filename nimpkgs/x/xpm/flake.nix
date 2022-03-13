{
  description = ''X-Pixmap & NetPBM'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xpm-master".dir   = "master";
  inputs."xpm-master".owner = "nim-nix-pkgs";
  inputs."xpm-master".ref   = "master";
  inputs."xpm-master".repo  = "xpm";
  inputs."xpm-master".type  = "github";
  inputs."xpm-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xpm-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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