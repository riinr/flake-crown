{
  description = ''Api Calls for Ford vehicles equipped with the fordpass app.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ffpass-master".dir   = "master";
  inputs."ffpass-master".owner = "nim-nix-pkgs";
  inputs."ffpass-master".ref   = "master";
  inputs."ffpass-master".repo  = "ffpass";
  inputs."ffpass-master".type  = "github";
  inputs."ffpass-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ffpass-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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