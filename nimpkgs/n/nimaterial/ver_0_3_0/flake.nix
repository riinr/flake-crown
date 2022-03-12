{
  description = ''nimaterial is a CSS output library based on material design.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimaterial-ver_0_3_0.flake = false;
  inputs.src-nimaterial-ver_0_3_0.owner = "momeemt";
  inputs.src-nimaterial-ver_0_3_0.ref   = "refs/tags/ver.0.3.0";
  inputs.src-nimaterial-ver_0_3_0.repo  = "nimaterial";
  inputs.src-nimaterial-ver_0_3_0.type  = "github";
  
  inputs."palette".dir   = "nimpkgs/p/palette";
  inputs."palette".owner = "riinr";
  inputs."palette".ref   = "flake-pinning";
  inputs."palette".repo  = "flake-nimble";
  inputs."palette".type  = "github";
  inputs."palette".inputs.nixpkgs.follows = "nixpkgs";
  inputs."palette".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimaterial-ver_0_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimaterial-ver_0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}