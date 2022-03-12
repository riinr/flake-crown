{
  description = ''A library for working with the CFG configuration format'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-config-0_1_1.flake = false;
  inputs.src-config-0_1_1.owner = "vsajip";
  inputs.src-config-0_1_1.ref   = "refs/tags/0.1.1";
  inputs.src-config-0_1_1.repo  = "nim-cfg-lib";
  inputs.src-config-0_1_1.type  = "github";
  
  inputs."nre".dir   = "nimpkgs/n/nre";
  inputs."nre".owner = "riinr";
  inputs."nre".ref   = "flake-pinning";
  inputs."nre".repo  = "flake-nimble";
  inputs."nre".type  = "github";
  inputs."nre".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nre".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timezones".dir   = "nimpkgs/t/timezones";
  inputs."timezones".owner = "riinr";
  inputs."timezones".ref   = "flake-pinning";
  inputs."timezones".repo  = "flake-nimble";
  inputs."timezones".type  = "github";
  inputs."timezones".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timezones".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-config-0_1_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-config-0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}