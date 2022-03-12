{
  description = ''Wrapper for microsoft's DirectX libraries'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-directnimrod-master.flake = false;
  inputs.src-directnimrod-master.owner = "barcharcraz";
  inputs.src-directnimrod-master.ref   = "refs/heads/master";
  inputs.src-directnimrod-master.repo  = "directnimrod";
  inputs.src-directnimrod-master.type  = "bitbucket";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-directnimrod-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-directnimrod-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}