{
  description = ''A minimalistic connection pooling package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tinypool-master.flake = false;
  inputs.src-tinypool-master.owner = "PhilippMDoerner";
  inputs.src-tinypool-master.ref   = "refs/heads/master";
  inputs.src-tinypool-master.repo  = "TinyPool";
  inputs.src-tinypool-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tinypool-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tinypool-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}