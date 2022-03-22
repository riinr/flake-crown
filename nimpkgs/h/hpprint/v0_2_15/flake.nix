{
  description = ''Generic configurable pretty-printer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hpprint-v0_2_15.flake = false;
  inputs.src-hpprint-v0_2_15.owner = "haxscramper";
  inputs.src-hpprint-v0_2_15.ref   = "v0_2_15";
  inputs.src-hpprint-v0_2_15.repo  = "hpprint";
  inputs.src-hpprint-v0_2_15.type  = "github";
  
  inputs."hdrawing".owner = "nim-nix-pkgs";
  inputs."hdrawing".ref   = "master";
  inputs."hdrawing".repo  = "hdrawing";
  inputs."hdrawing".dir   = "0_1_3";
  inputs."hdrawing".type  = "github";
  inputs."hdrawing".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hdrawing".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast".owner = "nim-nix-pkgs";
  inputs."hnimast".ref   = "master";
  inputs."hnimast".repo  = "hnimast";
  inputs."hnimast".dir   = "v0_4_2";
  inputs."hnimast".type  = "github";
  inputs."hnimast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hmisc".owner = "nim-nix-pkgs";
  inputs."hmisc".ref   = "master";
  inputs."hmisc".repo  = "hmisc";
  inputs."hmisc".dir   = "v0_14_6";
  inputs."hmisc".type  = "github";
  inputs."hmisc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hpprint-v0_2_15"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-hpprint-v0_2_15";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}