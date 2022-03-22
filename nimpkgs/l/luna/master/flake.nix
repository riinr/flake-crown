{
  description = ''Lua convenience library for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-luna-master.flake = false;
  inputs.src-luna-master.ref   = "refs/heads/master";
  inputs.src-luna-master.owner = "smallfx";
  inputs.src-luna-master.repo  = "luna.nim";
  inputs.src-luna-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-luna-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-luna-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}