{
  description = ''Ray tracing'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-trayx-master.flake = false;
  inputs.src-trayx-master.ref   = "refs/heads/master";
  inputs.src-trayx-master.owner = "teob97";
  inputs.src-trayx-master.repo  = "T-RayX";
  inputs.src-trayx-master.type  = "github";
  
  inputs."simplepng".owner = "nim-nix-pkgs";
  inputs."simplepng".ref   = "master";
  inputs."simplepng".repo  = "simplepng";
  inputs."simplepng".dir   = "source";
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-trayx-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-trayx-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}