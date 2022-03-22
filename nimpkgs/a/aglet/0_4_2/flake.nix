{
  description = ''A safe, high-level, optimized OpenGL wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-aglet-0_4_2.flake = false;
  inputs.src-aglet-0_4_2.owner = "liquid600pgm";
  inputs.src-aglet-0_4_2.ref   = "0_4_2";
  inputs.src-aglet-0_4_2.repo  = "aglet";
  inputs.src-aglet-0_4_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-aglet-0_4_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-aglet-0_4_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}