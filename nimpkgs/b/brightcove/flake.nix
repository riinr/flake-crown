{
  description = ''Brightcove player parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."brightcove-master".dir   = "master";
  inputs."brightcove-master".owner = "nim-nix-pkgs";
  inputs."brightcove-master".ref   = "master";
  inputs."brightcove-master".repo  = "brightcove";
  inputs."brightcove-master".type  = "github";
  inputs."brightcove-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."brightcove-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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