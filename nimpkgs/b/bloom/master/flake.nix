{
  description = ''Efficient Bloom filter implementation for Nimrod using MurmurHash3.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bloom-master.flake = false;
  inputs.src-bloom-master.owner = "boydgreenfield";
  inputs.src-bloom-master.ref   = "master";
  inputs.src-bloom-master.repo  = "nimrod-bloom";
  inputs.src-bloom-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bloom-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bloom-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}