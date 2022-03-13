{
  description = ''PCP PMDA module bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimpmda-master".dir   = "master";
  inputs."nimpmda-master".owner = "nim-nix-pkgs";
  inputs."nimpmda-master".ref   = "master";
  inputs."nimpmda-master".repo  = "nimpmda";
  inputs."nimpmda-master".type  = "github";
  inputs."nimpmda-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpmda-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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