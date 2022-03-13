{
  description = ''Nim wrapper around the git version control software'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gitapi-master".dir   = "master";
  inputs."gitapi-master".owner = "nim-nix-pkgs";
  inputs."gitapi-master".ref   = "master";
  inputs."gitapi-master".repo  = "gitapi";
  inputs."gitapi-master".type  = "github";
  inputs."gitapi-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gitapi-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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