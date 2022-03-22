{
  description = ''Wrapper for libnetpbm'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-netpbm-master.flake = false;
  inputs.src-netpbm-master.ref   = "refs/heads/master";
  inputs.src-netpbm-master.owner = "barcharcraz";
  inputs.src-netpbm-master.repo  = "nim-netpbm";
  inputs.src-netpbm-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-netpbm-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-netpbm-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}