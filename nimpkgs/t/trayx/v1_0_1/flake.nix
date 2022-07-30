{
  description = ''Ray tracing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-trayx-v1_0_1.flake = false;
  inputs.src-trayx-v1_0_1.ref   = "refs/tags/v1.0.1";
  inputs.src-trayx-v1_0_1.owner = "teob97";
  inputs.src-trayx-v1_0_1.repo  = "T-RayX";
  inputs.src-trayx-v1_0_1.type  = "github";
  
  inputs."simplepng".owner = "nim-nix-pkgs";
  inputs."simplepng".ref   = "master";
  inputs."simplepng".repo  = "simplepng";
  inputs."simplepng".dir   = "master";
  inputs."simplepng".type  = "github";
  inputs."simplepng".inputs.nixpkgs.follows = "nixpkgs";
  inputs."simplepng".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt".owner = "nim-nix-pkgs";
  inputs."docopt".ref   = "master";
  inputs."docopt".repo  = "docopt";
  inputs."docopt".dir   = "v0_6_8";
  inputs."docopt".type  = "github";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-trayx-v1_0_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-trayx-v1_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}