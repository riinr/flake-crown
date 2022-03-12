{
  description = ''Collection of helper utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hmisc-v0_8_6.flake = false;
  inputs.src-hmisc-v0_8_6.owner = "haxscramper";
  inputs.src-hmisc-v0_8_6.ref   = "refs/tags/v0.8.6";
  inputs.src-hmisc-v0_8_6.repo  = "hmisc";
  inputs.src-hmisc-v0_8_6.type  = "github";
  
  inputs."sorta".dir   = "nimpkgs/s/sorta";
  inputs."sorta".owner = "riinr";
  inputs."sorta".ref   = "flake-pinning";
  inputs."sorta".repo  = "flake-nimble";
  inputs."sorta".type  = "github";
  inputs."sorta".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sorta".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hmisc-v0_8_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hmisc-v0_8_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}