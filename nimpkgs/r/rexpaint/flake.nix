{
  description = ''REXPaint .xp parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."rexpaint-master".dir   = "master";
  inputs."rexpaint-master".owner = "nim-nix-pkgs";
  inputs."rexpaint-master".ref   = "master";
  inputs."rexpaint-master".repo  = "rexpaint";
  inputs."rexpaint-master".type  = "github";
  inputs."rexpaint-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rexpaint-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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