{
  description = ''Small wrapper for SystemVerilog DPI-C header svdpi.h'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-svdpi-v0_4_0.flake = false;
  inputs.src-svdpi-v0_4_0.owner = "kaushalmodi";
  inputs.src-svdpi-v0_4_0.ref   = "refs/tags/v0.4.0";
  inputs.src-svdpi-v0_4_0.repo  = "nim-svdpi";
  inputs.src-svdpi-v0_4_0.type  = "github";
  
  inputs."nimterop".dir   = "nimpkgs/n/nimterop";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".ref   = "flake-pinning";
  inputs."nimterop".repo  = "flake-nimble";
  inputs."nimterop".type  = "github";
  inputs."nimterop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-svdpi-v0_4_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-svdpi-v0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}