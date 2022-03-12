{
  description = ''Text parsing utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hparse-v0_2_4.flake = false;
  inputs.src-hparse-v0_2_4.owner = "haxscramper";
  inputs.src-hparse-v0_2_4.ref   = "refs/tags/v0.2.4";
  inputs.src-hparse-v0_2_4.repo  = "hparse";
  inputs.src-hparse-v0_2_4.type  = "github";
  
  inputs."regex".dir   = "nimpkgs/r/regex";
  inputs."regex".owner = "riinr";
  inputs."regex".ref   = "flake-pinning";
  inputs."regex".repo  = "flake-nimble";
  inputs."regex".type  = "github";
  inputs."regex".inputs.nixpkgs.follows = "nixpkgs";
  inputs."regex".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc".dir   = "nimpkgs/h/hmisc";
  inputs."hmisc".owner = "riinr";
  inputs."hmisc".ref   = "flake-pinning";
  inputs."hmisc".repo  = "flake-nimble";
  inputs."hmisc".type  = "github";
  inputs."hmisc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hasts".dir   = "nimpkgs/h/hasts";
  inputs."hasts".owner = "riinr";
  inputs."hasts".ref   = "flake-pinning";
  inputs."hasts".repo  = "flake-nimble";
  inputs."hasts".type  = "github";
  inputs."hasts".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint".dir   = "nimpkgs/h/hpprint";
  inputs."hpprint".owner = "riinr";
  inputs."hpprint".ref   = "flake-pinning";
  inputs."hpprint".repo  = "flake-nimble";
  inputs."hpprint".type  = "github";
  inputs."hpprint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hparse-v0_2_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hparse-v0_2_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}