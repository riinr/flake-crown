{
  description = ''JSON / Object mapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jsonob-master.flake = false;
  inputs.src-jsonob-master.owner = "cjxgm";
  inputs.src-jsonob-master.ref   = "refs/heads/master";
  inputs.src-jsonob-master.repo  = "jsonob";
  inputs.src-jsonob-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jsonob-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jsonob-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}