{
  description = ''NESM stands for Nim's Easy Serialization Macro. The macro allowing generation of serialization functions by one line of code!'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nesm-v0_2_0.flake = false;
  inputs.src-nesm-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-nesm-v0_2_0.owner = "xomachine";
  inputs.src-nesm-v0_2_0.repo  = "NESM";
  inputs.src-nesm-v0_2_0.type  = "gitlab";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nesm-v0_2_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nesm-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}