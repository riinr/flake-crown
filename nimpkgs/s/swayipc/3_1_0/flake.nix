{
  description = ''IPC interface to sway (or i3) compositors'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-swayipc-3_1_0.flake = false;
  inputs.src-swayipc-3_1_0.owner = "disruptek";
  inputs.src-swayipc-3_1_0.ref   = "refs/tags/3.1.0";
  inputs.src-swayipc-3_1_0.repo  = "swayipc";
  inputs.src-swayipc-3_1_0.type  = "github";
  
  inputs."nesm".dir   = "nimpkgs/n/nesm";
  inputs."nesm".owner = "riinr";
  inputs."nesm".ref   = "flake-pinning";
  inputs."nesm".repo  = "flake-nimble";
  inputs."nesm".type  = "github";
  inputs."nesm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nesm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".dir   = "nimpkgs/c/cligen";
  inputs."cligen".owner = "riinr";
  inputs."cligen".ref   = "flake-pinning";
  inputs."cligen".repo  = "flake-nimble";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-swayipc-3_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-swayipc-3_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}