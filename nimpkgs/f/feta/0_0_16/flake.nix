{
  description = ''A domain-specific for general purpose office automation. The language is embedded in Nim and allows for quick and easy integration of different office software environments.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-feta-0_0_16.flake = false;
  inputs.src-feta-0_0_16.owner = "FlorianRauls";
  inputs.src-feta-0_0_16.ref   = "refs/tags/0.0.16";
  inputs.src-feta-0_0_16.repo  = "office-DSL-thesis";
  inputs.src-feta-0_0_16.type  = "github";
  
  inputs."mime".dir   = "nimpkgs/m/mime";
  inputs."mime".owner = "riinr";
  inputs."mime".ref   = "flake-pinning";
  inputs."mime".repo  = "flake-nimble";
  inputs."mime".type  = "github";
  inputs."mime".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mime".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."jester".dir   = "nimpkgs/j/jester";
  inputs."jester".owner = "riinr";
  inputs."jester".ref   = "flake-pinning";
  inputs."jester".repo  = "flake-nimble";
  inputs."jester".type  = "github";
  inputs."jester".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."googleapi".dir   = "nimpkgs/g/googleapi";
  inputs."googleapi".owner = "riinr";
  inputs."googleapi".ref   = "flake-pinning";
  inputs."googleapi".repo  = "flake-nimble";
  inputs."googleapi".type  = "github";
  inputs."googleapi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."googleapi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ws".dir   = "nimpkgs/w/ws";
  inputs."ws".owner = "riinr";
  inputs."ws".ref   = "flake-pinning";
  inputs."ws".repo  = "flake-nimble";
  inputs."ws".type  = "github";
  inputs."ws".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ws".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-feta-0_0_16"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-feta-0_0_16";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}