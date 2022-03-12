{
  description = ''Create smooth GPU-accelerated animations that can be previewed live or rendered to videos.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nanim-main.flake = false;
  inputs.src-nanim-main.owner = "ErikWDev";
  inputs.src-nanim-main.ref   = "refs/heads/main";
  inputs.src-nanim-main.repo  = "nanim";
  inputs.src-nanim-main.type  = "github";
  
  inputs."staticglfw".dir   = "nimpkgs/s/staticglfw";
  inputs."staticglfw".owner = "riinr";
  inputs."staticglfw".ref   = "flake-pinning";
  inputs."staticglfw".repo  = "flake-nimble";
  inputs."staticglfw".type  = "github";
  inputs."staticglfw".inputs.nixpkgs.follows = "nixpkgs";
  inputs."staticglfw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."glm".dir   = "nimpkgs/g/glm";
  inputs."glm".owner = "riinr";
  inputs."glm".ref   = "flake-pinning";
  inputs."glm".repo  = "flake-nimble";
  inputs."glm".type  = "github";
  inputs."glm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."glm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nanovg".dir   = "nimpkgs/n/nanovg";
  inputs."nanovg".owner = "riinr";
  inputs."nanovg".ref   = "flake-pinning";
  inputs."nanovg".repo  = "flake-nimble";
  inputs."nanovg".type  = "github";
  inputs."nanovg".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nanovg".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."rainbow".dir   = "nimpkgs/r/rainbow";
  inputs."rainbow".owner = "riinr";
  inputs."rainbow".ref   = "flake-pinning";
  inputs."rainbow".repo  = "flake-nimble";
  inputs."rainbow".type  = "github";
  inputs."rainbow".inputs.nixpkgs.follows = "nixpkgs";
  inputs."rainbow".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image".dir   = "nimpkgs/s/stb_image";
  inputs."stb_image".owner = "riinr";
  inputs."stb_image".ref   = "flake-pinning";
  inputs."stb_image".repo  = "flake-nimble";
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