{
  description = ''Nim term rewriting system'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimtrs-master.flake = false;
  inputs.src-nimtrs-master.ref   = "refs/heads/master";
  inputs.src-nimtrs-master.owner = "haxscramper";
  inputs.src-nimtrs-master.repo  = "nimtrs";
  inputs.src-nimtrs-master.type  = "github";
  
  inputs."hmisc".owner = "nim-nix-pkgs";
  inputs."hmisc".ref   = "master";
  inputs."hmisc".repo  = "hmisc";
  inputs."hmisc".dir   = "v0_14_6";
  inputs."hmisc".type  = "github";
  inputs."hmisc".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmisc".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hdrawing".owner = "nim-nix-pkgs";
  inputs."hdrawing".ref   = "master";
  inputs."hdrawing".repo  = "hdrawing";
  inputs."hdrawing".dir   = "0_1_3";
  inputs."hdrawing".type  = "github";
  inputs."hdrawing".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hdrawing".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hpprint".owner = "nim-nix-pkgs";
  inputs."hpprint".ref   = "master";
  inputs."hpprint".repo  = "hpprint";
  inputs."hpprint".dir   = "v0_2_18";
  inputs."hpprint".type  = "github";
  inputs."hpprint".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hpprint".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."hnimast".owner = "nim-nix-pkgs";
  inputs."hnimast".ref   = "master";
  inputs."hnimast".repo  = "hnimast";
  inputs."hnimast".dir   = "v0_4_2";
  inputs."hnimast".type  = "github";
  inputs."hnimast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hnimast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimtrs-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimtrs-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}