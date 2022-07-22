{
  description = ''A new version of gin, with more features'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hangover-master.flake = false;
  inputs.src-hangover-master.ref   = "refs/heads/master";
  inputs.src-hangover-master.owner = "bob16795";
  inputs.src-hangover-master.repo  = "hangover";
  inputs.src-hangover-master.type  = "github";
  
  inputs."freetype".owner = "nim-nix-pkgs";
  inputs."freetype".ref   = "master";
  inputs."freetype".repo  = "freetype";
  inputs."freetype".dir   = "master";
  inputs."freetype".type  = "github";
  inputs."freetype".inputs.nixpkgs.follows = "nixpkgs";
  inputs."freetype".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."openal".owner = "nim-nix-pkgs";
  inputs."openal".ref   = "master";
  inputs."openal".repo  = "openal";
  inputs."openal".dir   = "0_1_1";
  inputs."openal".type  = "github";
  inputs."openal".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openal".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."opengl".owner = "nim-nix-pkgs";
  inputs."opengl".ref   = "master";
  inputs."opengl".repo  = "opengl";
  inputs."opengl".dir   = "1_2_6";
  inputs."opengl".type  = "github";
  inputs."opengl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glfw".owner = "nim-nix-pkgs";
  inputs."glfw".ref   = "master";
  inputs."glfw".repo  = "glfw";
  inputs."glfw".dir   = "v3_3_4_0";
  inputs."glfw".type  = "github";
  inputs."glfw".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glfw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glm".owner = "nim-nix-pkgs";
  inputs."glm".ref   = "master";
  inputs."glm".repo  = "glm";
  inputs."glm".dir   = "v1_1_1";
  inputs."glm".type  = "github";
  inputs."glm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hangover-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-hangover-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}