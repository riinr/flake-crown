{
  description = ''Mustache in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mustache-master.flake = false;
  inputs.src-mustache-master.owner = "soasme";
  inputs.src-mustache-master.ref   = "refs/heads/master";
  inputs.src-mustache-master.repo  = "nim-mustache";
  inputs.src-mustache-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mustache-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mustache-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}