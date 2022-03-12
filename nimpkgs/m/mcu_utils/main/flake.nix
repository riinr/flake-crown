{
  description = ''Utilities and simple helpers for programming with Nim on embedded MCU devices'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mcu_utils-main.flake = false;
  inputs.src-mcu_utils-main.owner = "EmbeddedNim";
  inputs.src-mcu_utils-main.ref   = "refs/heads/main";
  inputs.src-mcu_utils-main.repo  = "mcu_utils";
  inputs.src-mcu_utils-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mcu_utils-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mcu_utils-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}