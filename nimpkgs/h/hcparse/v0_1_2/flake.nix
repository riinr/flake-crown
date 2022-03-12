{
  description = ''High-level nim wrapper for C/C++ parsing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hcparse-v0_1_2.flake = false;
  inputs.src-hcparse-v0_1_2.owner = "haxscramper";
  inputs.src-hcparse-v0_1_2.ref   = "refs/tags/v0.1.2";
  inputs.src-hcparse-v0_1_2.repo  = "hcparse";
  inputs.src-hcparse-v0_1_2.type  = "github";
  
  inputs."hnimast".dir   = "nimpkgs/h/hnimast";
  inputs."hnimast".owner = "riinr";
  inputs."hnimast".ref   = "flake-pinning";
  inputs."hnimast".repo  = "flake-nimble";
  inputs."hnimast".type  = "github";
  inputs."hnimast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
  
  inputs."nimtraits".dir   = "nimpkgs/n/nimtraits";
  inputs."nimtraits".owner = "riinr";
  inputs."nimtraits".ref   = "flake-pinning";
  inputs."nimtraits".repo  = "flake-nimble";
  inputs."nimtraits".type  = "github";
  inputs."nimtraits".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimtraits".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hcparse-v0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hcparse-v0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}