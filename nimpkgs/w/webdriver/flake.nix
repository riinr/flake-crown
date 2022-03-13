{
  description = ''Implementation of the WebDriver w3c spec.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."webdriver-master".dir   = "master";
  inputs."webdriver-master".owner = "nim-nix-pkgs";
  inputs."webdriver-master".ref   = "master";
  inputs."webdriver-master".repo  = "webdriver";
  inputs."webdriver-master".type  = "github";
  inputs."webdriver-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webdriver-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webdriver-v0_1_0".dir   = "v0_1_0";
  inputs."webdriver-v0_1_0".owner = "nim-nix-pkgs";
  inputs."webdriver-v0_1_0".ref   = "master";
  inputs."webdriver-v0_1_0".repo  = "webdriver";
  inputs."webdriver-v0_1_0".type  = "github";
  inputs."webdriver-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webdriver-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webdriver-v0_2_0".dir   = "v0_2_0";
  inputs."webdriver-v0_2_0".owner = "nim-nix-pkgs";
  inputs."webdriver-v0_2_0".ref   = "master";
  inputs."webdriver-v0_2_0".repo  = "webdriver";
  inputs."webdriver-v0_2_0".type  = "github";
  inputs."webdriver-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webdriver-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}