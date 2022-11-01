{
  description = ''Pretty-printer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hpprint-v0_2_4.flake = false;
  inputs.src-hpprint-v0_2_4.ref   = "refs/tags/v0.2.4";
  inputs.src-hpprint-v0_2_4.owner = "haxscramper";
  inputs.src-hpprint-v0_2_4.repo  = "hpprint";
  inputs.src-hpprint-v0_2_4.type  = "github";
  
  inputs."shell".owner = "nim-nix-pkgs";
  inputs."shell".ref   = "master";
  inputs."shell".repo  = "shell";
  inputs."shell".dir   = "v0_5_0";
  inputs."shell".type  = "github";
  inputs."shell".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
  
  inputs."hasts".owner = "nim-nix-pkgs";
  inputs."hasts".ref   = "master";
  inputs."hasts".repo  = "hasts";
  inputs."hasts".dir   = "v0_1_6";
  inputs."hasts".type  = "github";
  inputs."hasts".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hasts".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hpprint-v0_2_4"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-hpprint-v0_2_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}