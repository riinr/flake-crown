{
  description = ''a tiny tool to bump nimble versions'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-bump-1_8_27.flake = false;
  inputs.src-bump-1_8_27.owner = "disruptek";
  inputs.src-bump-1_8_27.ref   = "refs/tags/1.8.27";
  inputs.src-bump-1_8_27.repo  = "bump";
  inputs.src-bump-1_8_27.type  = "github";
  
  inputs."https://github.com/disruptek/cutelog".dir   = "nimpkgs/h/https://github.com/disruptek/cutelog";
  inputs."https://github.com/disruptek/cutelog".owner = "riinr";
  inputs."https://github.com/disruptek/cutelog".ref   = "flake-pinning";
  inputs."https://github.com/disruptek/cutelog".repo  = "flake-nimble";
  inputs."https://github.com/disruptek/cutelog".type  = "github";
  inputs."https://github.com/disruptek/cutelog".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/disruptek/cutelog".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/disruptek/balls".dir   = "nimpkgs/h/https://github.com/disruptek/balls";
  inputs."https://github.com/disruptek/balls".owner = "riinr";
  inputs."https://github.com/disruptek/balls".ref   = "flake-pinning";
  inputs."https://github.com/disruptek/balls".repo  = "flake-nimble";
  inputs."https://github.com/disruptek/balls".type  = "github";
  inputs."https://github.com/disruptek/balls".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/disruptek/balls".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-bump-1_8_27"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-bump-1_8_27";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}