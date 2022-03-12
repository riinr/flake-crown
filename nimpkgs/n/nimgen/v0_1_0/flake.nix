{
  description = ''C2nim helper to simplify and automate wrapping C libraries'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimgen-v0_1_0.flake = false;
  inputs.src-nimgen-v0_1_0.owner = "genotrance";
  inputs.src-nimgen-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-nimgen-v0_1_0.repo  = "nimgen";
  inputs.src-nimgen-v0_1_0.type  = "github";
  
  inputs."c2nim".dir   = "nimpkgs/c/c2nim";
  inputs."c2nim".owner = "riinr";
  inputs."c2nim".ref   = "flake-pinning";
  inputs."c2nim".repo  = "flake-nimble";
  inputs."c2nim".type  = "github";
  inputs."c2nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."c2nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimgen-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimgen-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}