{
  description = ''Sorted Tables based on B-Trees'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sorta-master.flake = false;
  inputs.src-sorta-master.ref   = "refs/heads/master";
  inputs.src-sorta-master.owner = "narimiran";
  inputs.src-sorta-master.repo  = "sorta";
  inputs.src-sorta-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sorta-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-sorta-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}