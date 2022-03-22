{
  description = ''Nim wrapper for miniz'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nim_miniz-master.flake = false;
  inputs.src-nim_miniz-master.owner = "h3rald";
  inputs.src-nim_miniz-master.ref   = "master";
  inputs.src-nim_miniz-master.repo  = "nim-miniz";
  inputs.src-nim_miniz-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nim_miniz-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nim_miniz-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}