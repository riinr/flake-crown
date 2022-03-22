{
  description = ''Template generator for gester'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nim_exodus-master.flake = false;
  inputs.src-nim_exodus-master.owner = "shinriyo";
  inputs.src-nim_exodus-master.ref   = "master";
  inputs.src-nim_exodus-master.repo  = "nim_exodus";
  inputs.src-nim_exodus-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nim_exodus-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nim_exodus-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}