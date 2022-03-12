{
  description = ''Another micro web framework.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-prologue-v0_3_0.flake = false;
  inputs.src-prologue-v0_3_0.owner = "planety";
  inputs.src-prologue-v0_3_0.ref   = "refs/tags/v0.3.0";
  inputs.src-prologue-v0_3_0.repo  = "Prologue";
  inputs.src-prologue-v0_3_0.type  = "github";
  
  inputs."regex".dir   = "nimpkgs/r/regex";
  inputs."regex".owner = "riinr";
  inputs."regex".ref   = "flake-pinning";
  inputs."regex".repo  = "flake-nimble";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcrypto".dir   = "nimpkgs/n/nimcrypto";
  inputs."nimcrypto".owner = "riinr";
  inputs."nimcrypto".ref   = "flake-pinning";
  inputs."nimcrypto".repo  = "flake-nimble";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."karax".dir   = "nimpkgs/k/karax";
  inputs."karax".owner = "riinr";
  inputs."karax".ref   = "flake-pinning";
  inputs."karax".repo  = "flake-nimble";
  inputs."karax".type  = "github";
  inputs."karax".inputs.nixpkgs.follows = "nixpkgs";
  inputs."karax".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cookies".dir   = "nimpkgs/c/cookies";
  inputs."cookies".owner = "riinr";
  inputs."cookies".ref   = "flake-pinning";
  inputs."cookies".repo  = "flake-nimble";
  inputs."cookies".type  = "github";
  inputs."cookies".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cookies".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/xflywind/httpx".dir   = "nimpkgs/h/https://github.com/xflywind/httpx";
  inputs."https://github.com/xflywind/httpx".owner = "riinr";
  inputs."https://github.com/xflywind/httpx".ref   = "flake-pinning";
  inputs."https://github.com/xflywind/httpx".repo  = "flake-nimble";
  inputs."https://github.com/xflywind/httpx".type  = "github";
  inputs."https://github.com/xflywind/httpx".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/xflywind/httpx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-prologue-v0_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-prologue-v0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}