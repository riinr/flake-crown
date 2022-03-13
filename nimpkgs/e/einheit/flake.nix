{
  description = ''Pretty looking, full featured, Python-inspired unit test library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."einheit-master".dir   = "master";
  inputs."einheit-master".owner = "nim-nix-pkgs";
  inputs."einheit-master".ref   = "master";
  inputs."einheit-master".repo  = "einheit";
  inputs."einheit-master".type  = "github";
  inputs."einheit-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."einheit-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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