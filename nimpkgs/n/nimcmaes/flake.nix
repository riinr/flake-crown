{
  description = ''Nim CMAES library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimcmaes-master".dir   = "master";
  inputs."nimcmaes-master".owner = "nim-nix-pkgs";
  inputs."nimcmaes-master".ref   = "master";
  inputs."nimcmaes-master".repo  = "nimcmaes";
  inputs."nimcmaes-master".type  = "github";
  inputs."nimcmaes-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcmaes-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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