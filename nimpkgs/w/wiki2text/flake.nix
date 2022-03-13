{
  description = ''Quickly extracts natural-language text from a MediaWiki XML file.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."wiki2text-master".dir   = "master";
  inputs."wiki2text-master".owner = "nim-nix-pkgs";
  inputs."wiki2text-master".ref   = "master";
  inputs."wiki2text-master".repo  = "wiki2text";
  inputs."wiki2text-master".type  = "github";
  inputs."wiki2text-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wiki2text-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wiki2text-v0_1".dir   = "v0_1";
  inputs."wiki2text-v0_1".owner = "nim-nix-pkgs";
  inputs."wiki2text-v0_1".ref   = "master";
  inputs."wiki2text-v0_1".repo  = "wiki2text";
  inputs."wiki2text-v0_1".type  = "github";
  inputs."wiki2text-v0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wiki2text-v0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wiki2text-v0_2".dir   = "v0_2";
  inputs."wiki2text-v0_2".owner = "nim-nix-pkgs";
  inputs."wiki2text-v0_2".ref   = "master";
  inputs."wiki2text-v0_2".repo  = "wiki2text";
  inputs."wiki2text-v0_2".type  = "github";
  inputs."wiki2text-v0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wiki2text-v0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."wiki2text-v0_2_1".dir   = "v0_2_1";
  inputs."wiki2text-v0_2_1".owner = "nim-nix-pkgs";
  inputs."wiki2text-v0_2_1".ref   = "master";
  inputs."wiki2text-v0_2_1".repo  = "wiki2text";
  inputs."wiki2text-v0_2_1".type  = "github";
  inputs."wiki2text-v0_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wiki2text-v0_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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