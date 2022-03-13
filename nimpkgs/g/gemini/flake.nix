{
  description = ''Building blocks for making async Gemini servers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gemini-master".dir   = "master";
  inputs."gemini-master".owner = "nim-nix-pkgs";
  inputs."gemini-master".ref   = "master";
  inputs."gemini-master".repo  = "gemini";
  inputs."gemini-master".type  = "github";
  inputs."gemini-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gemini-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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