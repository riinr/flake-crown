{
  description = ''Simple reST HTML generation with some extras.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-lazy_rest-v0_2_2.flake = false;
  inputs.src-lazy_rest-v0_2_2.owner = "Araq";
  inputs.src-lazy_rest-v0_2_2.ref   = "refs/tags/v0.2.2";
  inputs.src-lazy_rest-v0_2_2.repo  = "lazy_rest";
  inputs.src-lazy_rest-v0_2_2.type  = "github";
  
  inputs."nake".dir   = "nimpkgs/n/nake";
  inputs."nake".owner = "riinr";
  inputs."nake".ref   = "flake-pinning";
  inputs."nake".repo  = "flake-nimble";
  inputs."nake".type  = "github";
  inputs."nake".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argument_parser".dir   = "nimpkgs/a/argument_parser";
  inputs."argument_parser".owner = "riinr";
  inputs."argument_parser".ref   = "flake-pinning";
  inputs."argument_parser".repo  = "flake-nimble";
  inputs."argument_parser".type  = "github";
  inputs."argument_parser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argument_parser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/gradha/badger_bits.git".dir   = "nimpkgs/h/https://github.com/gradha/badger_bits.git";
  inputs."https://github.com/gradha/badger_bits.git".owner = "riinr";
  inputs."https://github.com/gradha/badger_bits.git".ref   = "flake-pinning";
  inputs."https://github.com/gradha/badger_bits.git".repo  = "flake-nimble";
  inputs."https://github.com/gradha/badger_bits.git".type  = "github";
  inputs."https://github.com/gradha/badger_bits.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/gradha/badger_bits.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-lazy_rest-v0_2_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-lazy_rest-v0_2_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}