{
  description = ''untitled shell history application'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."usha-master".dir   = "master";
  inputs."usha-master".owner = "nim-nix-pkgs";
  inputs."usha-master".ref   = "master";
  inputs."usha-master".repo  = "usha";
  inputs."usha-master".type  = "github";
  inputs."usha-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."usha-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."usha-0_2".dir   = "0_2";
  inputs."usha-0_2".owner = "nim-nix-pkgs";
  inputs."usha-0_2".ref   = "master";
  inputs."usha-0_2".repo  = "usha";
  inputs."usha-0_2".type  = "github";
  inputs."usha-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."usha-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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