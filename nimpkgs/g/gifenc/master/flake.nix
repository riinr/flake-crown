{
  description = ''Gif Encoder'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gifenc-master.flake = false;
  inputs.src-gifenc-master.owner = "ftsf";
  inputs.src-gifenc-master.ref   = "refs/heads/master";
  inputs.src-gifenc-master.repo  = "gifenc";
  inputs.src-gifenc-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gifenc-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gifenc-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}