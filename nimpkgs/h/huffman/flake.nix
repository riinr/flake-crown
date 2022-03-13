{
  description = ''Huffman encode/decode for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."huffman-master".dir   = "master";
  inputs."huffman-master".owner = "nim-nix-pkgs";
  inputs."huffman-master".ref   = "master";
  inputs."huffman-master".repo  = "huffman";
  inputs."huffman-master".type  = "github";
  inputs."huffman-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."huffman-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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