{
  description = ''A port of libnx to Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libnx-0_2_1.flake = false;
  inputs.src-libnx-0_2_1.owner = "jyapayne";
  inputs.src-libnx-0_2_1.ref   = "refs/tags/0.2.1";
  inputs.src-libnx-0_2_1.repo  = "nim-libnx";
  inputs.src-libnx-0_2_1.type  = "github";
  
  inputs."nimgen".dir   = "nimpkgs/n/nimgen";
  inputs."nimgen".owner = "riinr";
  inputs."nimgen".ref   = "flake-pinning";
  inputs."nimgen".repo  = "flake-nimble";
  inputs."nimgen".type  = "github";
  inputs."nimgen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."switch_build".dir   = "nimpkgs/s/switch_build";
  inputs."switch_build".owner = "riinr";
  inputs."switch_build".ref   = "flake-pinning";
  inputs."switch_build".repo  = "flake-nimble";
  inputs."switch_build".type  = "github";
  inputs."switch_build".inputs.nixpkgs.follows = "nixpkgs";
  inputs."switch_build".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libnx-0_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-libnx-0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}