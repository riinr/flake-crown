{
  description = ''mofuparser is hyper minimal ultra fast http parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mofuparser-master".dir   = "master";
  inputs."mofuparser-master".owner = "nim-nix-pkgs";
  inputs."mofuparser-master".ref   = "master";
  inputs."mofuparser-master".repo  = "mofuparser";
  inputs."mofuparser-master".type  = "github";
  inputs."mofuparser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mofuparser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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