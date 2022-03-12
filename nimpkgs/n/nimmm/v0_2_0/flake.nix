{
  description = ''A terminal file manager written in nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimmm-v0_2_0.flake = false;
  inputs.src-nimmm-v0_2_0.owner = "joachimschmidt557";
  inputs.src-nimmm-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-nimmm-v0_2_0.repo  = "nimmm";
  inputs.src-nimmm-v0_2_0.type  = "github";
  
  inputs."noise".dir   = "nimpkgs/n/noise";
  inputs."noise".owner = "riinr";
  inputs."noise".ref   = "flake-pinning";
  inputs."noise".repo  = "flake-nimble";
  inputs."noise".type  = "github";
  inputs."noise".inputs.nixpkgs.follows = "nixpkgs";
  inputs."noise".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimbox".dir   = "nimpkgs/n/nimbox";
  inputs."nimbox".owner = "riinr";
  inputs."nimbox".ref   = "flake-pinning";
  inputs."nimbox".repo  = "flake-nimble";
  inputs."nimbox".type  = "github";
  inputs."nimbox".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbox".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lscolors".dir   = "nimpkgs/l/lscolors";
  inputs."lscolors".owner = "riinr";
  inputs."lscolors".ref   = "flake-pinning";
  inputs."lscolors".repo  = "flake-nimble";
  inputs."lscolors".type  = "github";
  inputs."lscolors".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lscolors".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimmm-v0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimmm-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}