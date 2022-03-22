{
  description = ''glue code generator to bind Nim and Lua together using Nim's powerful macro'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimLUA-master.flake = false;
  inputs.src-nimLUA-master.ref   = "refs/heads/master";
  inputs.src-nimLUA-master.owner = "jangko";
  inputs.src-nimLUA-master.repo  = "nimLUA";
  inputs.src-nimLUA-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimLUA-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimLUA-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}