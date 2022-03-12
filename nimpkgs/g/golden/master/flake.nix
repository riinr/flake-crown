{
  description = ''a benchmark tool'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-golden-master.flake = false;
  inputs.src-golden-master.owner = "disruptek";
  inputs.src-golden-master.ref   = "refs/heads/master";
  inputs.src-golden-master.repo  = "golden";
  inputs.src-golden-master.type  = "github";
  
  inputs."foreach".dir   = "nimpkgs/f/foreach";
  inputs."foreach".owner = "riinr";
  inputs."foreach".ref   = "flake-pinning";
  inputs."foreach".repo  = "flake-nimble";
  inputs."foreach".type  = "github";
  inputs."foreach".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foreach".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bump".dir   = "nimpkgs/b/bump";
  inputs."bump".owner = "riinr";
  inputs."bump".ref   = "flake-pinning";
  inputs."bump".repo  = "flake-nimble";
  inputs."bump".type  = "github";
  inputs."bump".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bump".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."msgpack4nim".dir   = "nimpkgs/m/msgpack4nim";
  inputs."msgpack4nim".owner = "riinr";
  inputs."msgpack4nim".ref   = "flake-pinning";
  inputs."msgpack4nim".repo  = "flake-nimble";
  inputs."msgpack4nim".type  = "github";
  inputs."msgpack4nim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."msgpack4nim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."terminaltables".dir   = "nimpkgs/t/terminaltables";
  inputs."terminaltables".owner = "riinr";
  inputs."terminaltables".ref   = "flake-pinning";
  inputs."terminaltables".repo  = "flake-nimble";
  inputs."terminaltables".type  = "github";
  inputs."terminaltables".inputs.nixpkgs.follows = "nixpkgs";
  inputs."terminaltables".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/disruptek/gittyup".dir   = "nimpkgs/h/https://github.com/disruptek/gittyup";
  inputs."https://github.com/disruptek/gittyup".owner = "riinr";
  inputs."https://github.com/disruptek/gittyup".ref   = "flake-pinning";
  inputs."https://github.com/disruptek/gittyup".repo  = "flake-nimble";
  inputs."https://github.com/disruptek/gittyup".type  = "github";
  inputs."https://github.com/disruptek/gittyup".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/disruptek/gittyup".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimterop".dir   = "nimpkgs/n/nimterop";
  inputs."nimterop".owner = "riinr";
  inputs."nimterop".ref   = "flake-pinning";
  inputs."nimterop".repo  = "flake-nimble";
  inputs."nimterop".type  = "github";
  inputs."nimterop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".dir   = "nimpkgs/c/cligen";
  inputs."cligen".owner = "riinr";
  inputs."cligen".ref   = "flake-pinning";
  inputs."cligen".repo  = "flake-nimble";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-golden-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-golden-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}