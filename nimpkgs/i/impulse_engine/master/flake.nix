{
  description = ''Nim port of a simple 2D physics engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-impulse_engine-master.flake = false;
  inputs.src-impulse_engine-master.owner = "matkuki";
  inputs.src-impulse_engine-master.ref   = "refs/heads/master";
  inputs.src-impulse_engine-master.repo  = "Nim-Impulse-Engine";
  inputs.src-impulse_engine-master.type  = "github";
  
  inputs."opengl".owner = "nim-nix-pkgs";
  inputs."opengl".ref   = "master";
  inputs."opengl".repo  = "opengl";
  inputs."opengl".type  = "github";
  inputs."opengl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."opengl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."x11".owner = "nim-nix-pkgs";
  inputs."x11".ref   = "master";
  inputs."x11".repo  = "x11";
  inputs."x11".type  = "github";
  inputs."x11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."x11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nim-glfw".owner = "nim-nix-pkgs";
  inputs."nim-glfw".ref   = "master";
  inputs."nim-glfw".repo  = "nim-glfw";
  inputs."nim-glfw".type  = "github";
  inputs."nim-glfw".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim-glfw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-impulse_engine-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-impulse_engine-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}