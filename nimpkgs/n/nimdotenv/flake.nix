{
  description = ''Load local environment variables from .env files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimdotenv-master".dir   = "master";
  inputs."nimdotenv-master".owner = "nim-nix-pkgs";
  inputs."nimdotenv-master".ref   = "master";
  inputs."nimdotenv-master".repo  = "nimdotenv";
  inputs."nimdotenv-master".type  = "github";
  inputs."nimdotenv-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimdotenv-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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