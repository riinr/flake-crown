{
  description = ''Nim support for substitution expressions'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."subexes-master".dir   = "master";
  inputs."subexes-master".owner = "nim-nix-pkgs";
  inputs."subexes-master".ref   = "master";
  inputs."subexes-master".repo  = "subexes";
  inputs."subexes-master".type  = "github";
  inputs."subexes-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."subexes-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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