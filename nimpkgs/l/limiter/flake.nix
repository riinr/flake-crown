{
  description = ''A simple to use HTTP rate limiting library to limit any action during a specific period of time.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."limiter-main".dir   = "main";
  inputs."limiter-main".owner = "nim-nix-pkgs";
  inputs."limiter-main".ref   = "master";
  inputs."limiter-main".repo  = "limiter";
  inputs."limiter-main".type  = "github";
  inputs."limiter-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."limiter-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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