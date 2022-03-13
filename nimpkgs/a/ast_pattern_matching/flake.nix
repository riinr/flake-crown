{
  description = ''a general ast pattern matching library with a focus on correctness and good error messages'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ast_pattern_matching-master".dir   = "master";
  inputs."ast_pattern_matching-master".owner = "nim-nix-pkgs";
  inputs."ast_pattern_matching-master".ref   = "master";
  inputs."ast_pattern_matching-master".repo  = "ast_pattern_matching";
  inputs."ast_pattern_matching-master".type  = "github";
  inputs."ast_pattern_matching-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ast_pattern_matching-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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