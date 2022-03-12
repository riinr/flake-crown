{
  description = ''A port of mdbook to nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimibook-v0_2_1.flake = false;
  inputs.src-nimibook-v0_2_1.owner = "pietroppeter";
  inputs.src-nimibook-v0_2_1.ref   = "refs/tags/v0.2.1";
  inputs.src-nimibook-v0_2_1.repo  = "nimibook";
  inputs.src-nimibook-v0_2_1.type  = "github";
  
  inputs."nimib".dir   = "nimpkgs/n/nimib";
  inputs."nimib".owner = "riinr";
  inputs."nimib".ref   = "flake-pinning";
  inputs."nimib".repo  = "flake-nimble";
  inputs."nimib".type  = "github";
  inputs."nimib".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimib".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jsony".dir   = "nimpkgs/j/jsony";
  inputs."jsony".owner = "riinr";
  inputs."jsony".ref   = "flake-pinning";
  inputs."jsony".repo  = "flake-nimble";
  inputs."jsony".type  = "github";
  inputs."jsony".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsony".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimibook-v0_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimibook-v0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}