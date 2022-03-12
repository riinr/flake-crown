{
  description = ''A postgres DB adapter for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pdba-v0_2_4.flake = false;
  inputs.src-pdba-v0_2_4.owner = "misebox";
  inputs.src-pdba-v0_2_4.ref   = "refs/tags/v0.2.4";
  inputs.src-pdba-v0_2_4.repo  = "pdba";
  inputs.src-pdba-v0_2_4.type  = "github";
  
  inputs."yaml".dir   = "nimpkgs/y/yaml";
  inputs."yaml".owner = "riinr";
  inputs."yaml".ref   = "flake-pinning";
  inputs."yaml".repo  = "flake-nimble";
  inputs."yaml".type  = "github";
  inputs."yaml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb".dir   = "nimpkgs/n/ndb";
  inputs."ndb".owner = "riinr";
  inputs."ndb".ref   = "flake-pinning";
  inputs."ndb".repo  = "flake-nimble";
  inputs."ndb".type  = "github";
  inputs."ndb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pdba-v0_2_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pdba-v0_2_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}