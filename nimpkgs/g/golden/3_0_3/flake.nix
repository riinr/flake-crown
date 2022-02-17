{
  description = ''a benchmark tool'';
  inputs.src-golden-3_0_3.flake = false;
  inputs.src-golden-3_0_3.type = "github";
  inputs.src-golden-3_0_3.owner = "disruptek";
  inputs.src-golden-3_0_3.repo = "golden";
  inputs.src-golden-3_0_3.ref = "refs/tags/3.0.3";
  
  
  inputs."foreach".type = "github";
  inputs."foreach".owner = "riinr";
  inputs."foreach".repo = "flake-nimble";
  inputs."foreach".ref = "flake-pinning";
  inputs."foreach".dir = "nimpkgs/f/foreach";

  
  inputs."bump".type = "github";
  inputs."bump".owner = "riinr";
  inputs."bump".repo = "flake-nimble";
  inputs."bump".ref = "flake-pinning";
  inputs."bump".dir = "nimpkgs/b/bump";

  
  inputs."nimetry".type = "github";
  inputs."nimetry".owner = "riinr";
  inputs."nimetry".repo = "flake-nimble";
  inputs."nimetry".ref = "flake-pinning";
  inputs."nimetry".dir = "nimpkgs/n/nimetry";

  
  inputs."msgpack4nim".type = "github";
  inputs."msgpack4nim".owner = "riinr";
  inputs."msgpack4nim".repo = "flake-nimble";
  inputs."msgpack4nim".ref = "flake-pinning";
  inputs."msgpack4nim".dir = "nimpkgs/m/msgpack4nim";

  
  inputs."https://github.com/disruptek/nim-terminaltables".type = "github";
  inputs."https://github.com/disruptek/nim-terminaltables".owner = "riinr";
  inputs."https://github.com/disruptek/nim-terminaltables".repo = "flake-nimble";
  inputs."https://github.com/disruptek/nim-terminaltables".ref = "flake-pinning";
  inputs."https://github.com/disruptek/nim-terminaltables".dir = "nimpkgs/h/https://github.com/disruptek/nim-terminaltables";

  
  inputs."nimgit2".type = "github";
  inputs."nimgit2".owner = "riinr";
  inputs."nimgit2".repo = "flake-nimble";
  inputs."nimgit2".ref = "flake-pinning";
  inputs."nimgit2".dir = "nimpkgs/n/nimgit2";

  
  inputs."lmdb".type = "github";
  inputs."lmdb".owner = "riinr";
  inputs."lmdb".repo = "flake-nimble";
  inputs."lmdb".ref = "flake-pinning";
  inputs."lmdb".dir = "nimpkgs/l/lmdb";

  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-golden-3_0_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-golden-3_0_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-golden-3_0_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}