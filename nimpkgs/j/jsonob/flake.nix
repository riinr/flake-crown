{
  description = ''JSON / Object mapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jsonob-master".dir   = "master";
  inputs."jsonob-master".owner = "nim-nix-pkgs";
  inputs."jsonob-master".ref   = "master";
  inputs."jsonob-master".repo  = "jsonob";
  inputs."jsonob-master".type  = "github";
  inputs."jsonob-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsonob-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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