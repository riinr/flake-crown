{
  description = ''X-Plane XPLM SDK wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-XPLM-Nim-v0_2_1.flake = false;
  inputs.src-XPLM-Nim-v0_2_1.ref   = "refs/tags/v0.2.1";
  inputs.src-XPLM-Nim-v0_2_1.owner = "jpoirier";
  inputs.src-XPLM-Nim-v0_2_1.repo  = "XPLM-Nim";
  inputs.src-XPLM-Nim-v0_2_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-XPLM-Nim-v0_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-XPLM-Nim-v0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}