{
  description = ''GLFW Bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-glfw-master.flake = false;
  inputs.src-glfw-master.ref   = "refs/heads/master";
  inputs.src-glfw-master.owner = "jyapayne";
  inputs.src-glfw-master.repo  = "nim-glfw";
  inputs.src-glfw-master.type  = "github";
  
  inputs."github-jyapayne-nimterop".owner = "nim-nix-pkgs";
  inputs."github-jyapayne-nimterop".ref   = "master";
  inputs."github-jyapayne-nimterop".repo  = "github-jyapayne-nimterop";
  inputs."github-jyapayne-nimterop".dir   = "v0_4_4";
  inputs."github-jyapayne-nimterop".type  = "github";
  inputs."github-jyapayne-nimterop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-jyapayne-nimterop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-glfw-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-glfw-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}