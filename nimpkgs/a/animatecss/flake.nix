{
  description = ''Easily use Animate.css classes'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."animatecss-master".dir   = "master";
  inputs."animatecss-master".owner = "nim-nix-pkgs";
  inputs."animatecss-master".ref   = "master";
  inputs."animatecss-master".repo  = "animatecss";
  inputs."animatecss-master".type  = "github";
  inputs."animatecss-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."animatecss-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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