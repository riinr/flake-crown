{
  description = ''Implementation of various LZ77 algorithms'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-lz77-master.flake = false;
  inputs.src-lz77-master.owner = "sealmove";
  inputs.src-lz77-master.ref   = "refs/heads/master";
  inputs.src-lz77-master.repo  = "LZ77";
  inputs.src-lz77-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-lz77-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-lz77-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}