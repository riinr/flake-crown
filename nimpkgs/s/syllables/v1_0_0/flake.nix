{
  description = ''Syllable estimation for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-syllables-v1_0_0.flake = false;
  inputs.src-syllables-v1_0_0.owner = "tonogram";
  inputs.src-syllables-v1_0_0.ref   = "refs/tags/v1.0.0";
  inputs.src-syllables-v1_0_0.repo  = "nim-syllables";
  inputs.src-syllables-v1_0_0.type  = "github";
  
  inputs."regex".owner = "nim-nix-pkgs";
  inputs."regex".ref   = "master";
  inputs."regex".repo  = "regex";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/disruptek/testes".owner = "nim-nix-pkgs";
  inputs."https://github.com/disruptek/testes".ref   = "master";
  inputs."https://github.com/disruptek/testes".repo  = "https://github.com/disruptek/testes";
  inputs."https://github.com/disruptek/testes".type  = "github";
  inputs."https://github.com/disruptek/testes".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/disruptek/testes".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-syllables-v1_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-syllables-v1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}