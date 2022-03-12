{
  description = ''Password generator in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-npg-0_1_0.flake = false;
  inputs.src-npg-0_1_0.owner = "rustomax";
  inputs.src-npg-0_1_0.ref   = "refs/tags/0.1.0";
  inputs.src-npg-0_1_0.repo  = "npg";
  inputs.src-npg-0_1_0.type  = "github";
  
  inputs."passgen".dir   = "nimpkgs/p/passgen";
  inputs."passgen".owner = "riinr";
  inputs."passgen".ref   = "flake-pinning";
  inputs."passgen".repo  = "flake-nimble";
  inputs."passgen".type  = "github";
  inputs."passgen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."passgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-npg-0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-npg-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}