{
  description = ''Nim bindings for libOVR (Oculus Rift)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libovr-master.flake = false;
  inputs.src-libovr-master.owner = "bluenote10";
  inputs.src-libovr-master.ref   = "refs/heads/master";
  inputs.src-libovr-master.repo  = "nim-ovr";
  inputs.src-libovr-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libovr-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libovr-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}