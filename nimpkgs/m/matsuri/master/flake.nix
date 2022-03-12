{
  description = ''Useful Variant Type and Powerful Pattern Matching for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-matsuri-master.flake = false;
  inputs.src-matsuri-master.owner = "zer0-star";
  inputs.src-matsuri-master.ref   = "refs/heads/master";
  inputs.src-matsuri-master.repo  = "matsuri";
  inputs.src-matsuri-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-matsuri-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-matsuri-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}