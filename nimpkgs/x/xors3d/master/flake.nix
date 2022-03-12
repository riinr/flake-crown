{
  description = ''Blitz3D-esque DX9 engine for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-Xors3D-master.flake = false;
  inputs.src-Xors3D-master.owner = "Guevara-chan";
  inputs.src-Xors3D-master.ref   = "refs/heads/master";
  inputs.src-Xors3D-master.repo  = "Xors3D-for-Nim";
  inputs.src-Xors3D-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-Xors3D-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-Xors3D-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}