{
  description = ''NESM stands for Nim's Easy Serialization Macro. The macro allowing generation of serialization functions by one line of code!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nesm-v0_3_2.flake = false;
  inputs.src-nesm-v0_3_2.owner = "xomachine";
  inputs.src-nesm-v0_3_2.ref   = "v0_3_2";
  inputs.src-nesm-v0_3_2.repo  = "NESM.git";
  inputs.src-nesm-v0_3_2.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nesm-v0_3_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nesm-v0_3_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}