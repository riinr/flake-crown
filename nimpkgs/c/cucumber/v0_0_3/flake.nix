{
  description = ''implements the cucumber BDD framework in the nim language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cucumber-v0_0_3.flake = false;
  inputs.src-cucumber-v0_0_3.owner = "shaunc";
  inputs.src-cucumber-v0_0_3.ref   = "refs/tags/v0.0.3";
  inputs.src-cucumber-v0_0_3.repo  = "cucumber_nim";
  inputs.src-cucumber-v0_0_3.type  = "github";
  
  inputs."nre".dir   = "nimpkgs/n/nre";
  inputs."nre".owner = "riinr";
  inputs."nre".ref   = "flake-pinning";
  inputs."nre".repo  = "flake-nimble";
  inputs."nre".type  = "github";
  inputs."nre".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."comandeer".dir   = "nimpkgs/c/comandeer";
  inputs."comandeer".owner = "riinr";
  inputs."comandeer".ref   = "flake-pinning";
  inputs."comandeer".repo  = "flake-nimble";
  inputs."comandeer".type  = "github";
  inputs."comandeer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."comandeer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cucumber-v0_0_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cucumber-v0_0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}