{
  description = ''Huffman encode/decode for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-huffman-master.flake = false;
  inputs.src-huffman-master.owner = "xzeshen";
  inputs.src-huffman-master.ref   = "refs/heads/master";
  inputs.src-huffman-master.repo  = "huffman";
  inputs.src-huffman-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-huffman-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-huffman-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}