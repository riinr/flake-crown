{
  description = ''Another micro web framework.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-prologue-v0_5_2.flake = false;
  inputs.src-prologue-v0_5_2.owner = "planety";
  inputs.src-prologue-v0_5_2.ref   = "refs/tags/v0.5.2";
  inputs.src-prologue-v0_5_2.repo  = "Prologue";
  inputs.src-prologue-v0_5_2.type  = "github";
  
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
  
  inputs."cookiejar".dir   = "nimpkgs/c/cookiejar";
  inputs."cookiejar".owner = "riinr";
  inputs."cookiejar".ref   = "flake-pinning";
  inputs."cookiejar".repo  = "flake-nimble";
  inputs."cookiejar".type  = "github";
  inputs."cookiejar".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cookiejar".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."httpx".dir   = "nimpkgs/h/httpx";
  inputs."httpx".owner = "riinr";
  inputs."httpx".ref   = "flake-pinning";
  inputs."httpx".repo  = "flake-nimble";
  inputs."httpx".type  = "github";
  inputs."httpx".inputs.nixpkgs.follows = "nixpkgs";
  inputs."httpx".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."logue".dir   = "nimpkgs/l/logue";
  inputs."logue".owner = "riinr";
  inputs."logue".ref   = "flake-pinning";
  inputs."logue".repo  = "flake-nimble";
  inputs."logue".type  = "github";
  inputs."logue".inputs.nixpkgs.follows = "nixpkgs";
  inputs."logue".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-prologue-v0_5_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-prologue-v0_5_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}