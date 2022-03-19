{
  description = ''Redis connection pool'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-redpool-master.flake = false;
  inputs.src-redpool-master.owner = "zedeus";
  inputs.src-redpool-master.ref   = "refs/heads/master";
  inputs.src-redpool-master.repo  = "redpool";
  inputs.src-redpool-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-redpool-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-redpool-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}