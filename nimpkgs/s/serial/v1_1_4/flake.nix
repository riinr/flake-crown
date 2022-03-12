{
  description = ''A library to operate serial ports using pure Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-serial-v1_1_4.flake = false;
  inputs.src-serial-v1_1_4.owner = "euantorano";
  inputs.src-serial-v1_1_4.ref   = "refs/tags/v1.1.4";
  inputs.src-serial-v1_1_4.repo  = "serial.nim";
  inputs.src-serial-v1_1_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-serial-v1_1_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-serial-v1_1_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}