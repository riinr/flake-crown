{
  description = ''Nim wrapper for the NanoVG antialiased vector graphics rendering library for OpenGL'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nanovg-v0_3_1.flake = false;
  inputs.src-nanovg-v0_3_1.owner = "johnnovak";
  inputs.src-nanovg-v0_3_1.ref   = "v0_3_1";
  inputs.src-nanovg-v0_3_1.repo  = "nim-nanovg";
  inputs.src-nanovg-v0_3_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nanovg-v0_3_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nanovg-v0_3_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}