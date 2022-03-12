{
  description = ''implements the cucumber BDD framework in the nim language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cucumber-master.flake = false;
  inputs.src-cucumber-master.owner = "shaunc";
  inputs.src-cucumber-master.ref   = "refs/heads/master";
  inputs.src-cucumber-master.repo  = "cucumber_nim";
  inputs.src-cucumber-master.type  = "github";
  
  inputs."nre".dir   = "nimpkgs/n/nre";
  inputs."nre".owner = "riinr";
  inputs."nre".ref   = "flake-pinning";
  inputs."nre".repo  = "flake-nimble";
  inputs."nre".type  = "github";
  inputs."nre".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."commandeer".dir   = "nimpkgs/c/commandeer";
  inputs."commandeer".owner = "riinr";
  inputs."commandeer".ref   = "flake-pinning";
  inputs."commandeer".repo  = "flake-nimble";
  inputs."commandeer".type  = "github";
  inputs."commandeer".inputs.nixpkgs.follows = "nixpkgs";
  inputs."commandeer".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tempfile".dir   = "nimpkgs/t/tempfile";
  inputs."tempfile".owner = "riinr";
  inputs."tempfile".ref   = "flake-pinning";
  inputs."tempfile".repo  = "flake-nimble";
  inputs."tempfile".type  = "github";
  inputs."tempfile".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tempfile".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cucumber-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cucumber-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}