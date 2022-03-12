{
  description = ''Pretty-printer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hpprint-v0_2_14.flake = false;
  inputs.src-hpprint-v0_2_14.owner = "haxscramper";
  inputs.src-hpprint-v0_2_14.ref   = "refs/tags/v0.2.14";
  inputs.src-hpprint-v0_2_14.repo  = "hpprint";
  inputs.src-hpprint-v0_2_14.type  = "github";
  
  inputs."hdrawing".dir   = "nimpkgs/h/hdrawing";
  inputs."hdrawing".owner = "riinr";
  inputs."hdrawing".ref   = "flake-pinning";
  inputs."hdrawing".repo  = "flake-nimble";
  inputs."hdrawing".type  = "github";
  inputs."hdrawing".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hdrawing".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hpprint-v0_2_14"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hpprint-v0_2_14";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}