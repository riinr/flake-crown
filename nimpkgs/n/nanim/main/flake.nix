{
  description = ''Nanim is an easy-to-use framework to create smooth GPU-accelerated animations and export them to videos.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nanim-main.flake = false;
  inputs.src-nanim-main.ref   = "refs/heads/main";
  inputs.src-nanim-main.owner = "ErikWDev";
  inputs.src-nanim-main.repo  = "nanim";
  inputs.src-nanim-main.type  = "github";
  
  inputs."staticglfw".owner = "nim-nix-pkgs";
  inputs."staticglfw".ref   = "master";
  inputs."staticglfw".repo  = "staticglfw";
  inputs."staticglfw".dir   = "4_1_3";
  inputs."staticglfw".type  = "github";
  inputs."staticglfw".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glm".owner = "nim-nix-pkgs";
  inputs."glm".ref   = "master";
  inputs."glm".repo  = "glm";
  inputs."glm".dir   = "v1_1_1";
  inputs."glm".type  = "github";
  inputs."glm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nanovg".owner = "nim-nix-pkgs";
  inputs."nanovg".ref   = "master";
  inputs."nanovg".repo  = "nanovg";
  inputs."nanovg".dir   = "v0_3_3";
  inputs."nanovg".type  = "github";
  inputs."nanovg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rainbow".owner = "nim-nix-pkgs";
  inputs."rainbow".ref   = "master";
  inputs."rainbow".repo  = "rainbow";
  inputs."rainbow".dir   = "v0_2_3";
  inputs."rainbow".type  = "github";
  inputs."rainbow".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rainbow".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image".owner = "nim-nix-pkgs";
  inputs."stb_image".ref   = "master";
  inputs."stb_image".repo  = "stb_image";
  inputs."stb_image".dir   = "2_5";
  inputs."stb_image".type  = "github";
  inputs."stb_image".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nanim-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nanim-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}