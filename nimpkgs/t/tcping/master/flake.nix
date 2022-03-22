{
  description = ''Ping hosts using tcp packets'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tcping-master.flake = false;
  inputs.src-tcping-master.ref   = "refs/heads/master";
  inputs.src-tcping-master.owner = "pdrb";
  inputs.src-tcping-master.repo  = "tcping";
  inputs.src-tcping-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tcping-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tcping-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}