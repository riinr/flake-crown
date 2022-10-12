{
  description = ''Jester rate limiter plugin'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."clown_limiter-main".dir   = "main";
  inputs."clown_limiter-main".owner = "nim-nix-pkgs";
  inputs."clown_limiter-main".ref   = "master";
  inputs."clown_limiter-main".repo  = "clown_limiter";
  inputs."clown_limiter-main".type  = "github";
  inputs."clown_limiter-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clown_limiter-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."clown_limiter-stable".dir   = "stable";
  inputs."clown_limiter-stable".owner = "nim-nix-pkgs";
  inputs."clown_limiter-stable".ref   = "master";
  inputs."clown_limiter-stable".repo  = "clown_limiter";
  inputs."clown_limiter-stable".type  = "github";
  inputs."clown_limiter-stable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clown_limiter-stable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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