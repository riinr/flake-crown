{
  description = ''Nim wrapper for OCaml language support within tree-sitter'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."treesitter_ocaml-master".dir   = "master";
  inputs."treesitter_ocaml-master".owner = "nim-nix-pkgs";
  inputs."treesitter_ocaml-master".ref   = "master";
  inputs."treesitter_ocaml-master".repo  = "treesitter_ocaml";
  inputs."treesitter_ocaml-master".type  = "github";
  inputs."treesitter_ocaml-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."treesitter_ocaml-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."treesitter_ocaml-v0_1_0".dir   = "v0_1_0";
  inputs."treesitter_ocaml-v0_1_0".owner = "nim-nix-pkgs";
  inputs."treesitter_ocaml-v0_1_0".ref   = "master";
  inputs."treesitter_ocaml-v0_1_0".repo  = "treesitter_ocaml";
  inputs."treesitter_ocaml-v0_1_0".type  = "github";
  inputs."treesitter_ocaml-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."treesitter_ocaml-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."treesitter_ocaml-v0_1_1".dir   = "v0_1_1";
  inputs."treesitter_ocaml-v0_1_1".owner = "nim-nix-pkgs";
  inputs."treesitter_ocaml-v0_1_1".ref   = "master";
  inputs."treesitter_ocaml-v0_1_1".repo  = "treesitter_ocaml";
  inputs."treesitter_ocaml-v0_1_1".type  = "github";
  inputs."treesitter_ocaml-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."treesitter_ocaml-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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