{
  description = ''A safe, high-level, optimized OpenGL wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-aglet-0_4_2.flake = false;
  inputs.src-aglet-0_4_2.ref   = "refs/tags/0.4.2";
  inputs.src-aglet-0_4_2.owner = "liquid600pgm";
  inputs.src-aglet-0_4_2.repo  = "aglet";
  inputs.src-aglet-0_4_2.type  = "github";
  
  inputs."github-liquid600pgm-nim-glm".owner = "nim-nix-pkgs";
  inputs."github-liquid600pgm-nim-glm".ref   = "master";
  inputs."github-liquid600pgm-nim-glm".repo  = "github-liquid600pgm-nim-glm";
  inputs."github-liquid600pgm-nim-glm".dir   = "v1_1_1";
  inputs."github-liquid600pgm-nim-glm".type  = "github";
  inputs."github-liquid600pgm-nim-glm".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-liquid600pgm-nim-glm".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."github-nimgl-glfw".owner = "nim-nix-pkgs";
  inputs."github-nimgl-glfw".ref   = "master";
  inputs."github-nimgl-glfw".repo  = "github-nimgl-glfw";
  inputs."github-nimgl-glfw".dir   = "3_3_4";
  inputs."github-nimgl-glfw".type  = "github";
  inputs."github-nimgl-glfw".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-nimgl-glfw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-aglet-0_4_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-aglet-0_4_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}