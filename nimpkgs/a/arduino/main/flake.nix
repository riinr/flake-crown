{
  description = ''Arduino bindings for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-arduino-main.flake = false;
  inputs.src-arduino-main.owner = "markspanbroek";
  inputs.src-arduino-main.ref   = "main";
  inputs.src-arduino-main.repo  = "nim-arduino";
  inputs.src-arduino-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-arduino-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-arduino-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}