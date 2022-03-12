{
  description = ''Text parsing utilities'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hparse-v0_2_6.flake = false;
  inputs.src-hparse-v0_2_6.owner = "haxscramper";
  inputs.src-hparse-v0_2_6.ref   = "refs/tags/v0.2.6";
  inputs.src-hparse-v0_2_6.repo  = "hparse";
  inputs.src-hparse-v0_2_6.type  = "github";
  
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
  
  inputs."hpprint".dir   = "nimpkgs/h/hpprint";
  inputs."hpprint".owner = "riinr";
  inputs."hpprint".ref   = "flake-pinning";
  inputs."hpprint".repo  = "flake-nimble";
  inputs."hpprint".type  = "github";
  inputs."hpprint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast".dir   = "nimpkgs/h/hnimast";
  inputs."hnimast".owner = "riinr";
  inputs."hnimast".ref   = "flake-pinning";
  inputs."hnimast".repo  = "flake-nimble";
  inputs."hnimast".type  = "github";
  inputs."hnimast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hparse-v0_2_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hparse-v0_2_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}