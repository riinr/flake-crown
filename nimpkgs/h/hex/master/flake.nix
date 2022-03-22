{
  description = ''A simple hex package for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hex-master.flake = false;
  inputs.src-hex-master.owner = "esbullington";
  inputs.src-hex-master.ref   = "master";
  inputs.src-hex-master.repo  = "nimrod-hex";
  inputs.src-hex-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hex-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hex-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}