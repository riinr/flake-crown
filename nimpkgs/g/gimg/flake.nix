{
  description = ''Google Images scraper lib and CLI'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gimg-master".dir   = "master";
  inputs."gimg-master".owner = "nim-nix-pkgs";
  inputs."gimg-master".ref   = "master";
  inputs."gimg-master".repo  = "gimg";
  inputs."gimg-master".type  = "github";
  inputs."gimg-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gimg-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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