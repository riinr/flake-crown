{
  description = ''A wrapper for the graphviz c api.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimviz-master".dir   = "master";
  inputs."nimviz-master".owner = "nim-nix-pkgs";
  inputs."nimviz-master".ref   = "master";
  inputs."nimviz-master".repo  = "nimviz";
  inputs."nimviz-master".type  = "github";
  inputs."nimviz-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimviz-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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