{
  description = ''Generate and parse Mac OS X .plist files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-plists-master.flake = false;
  inputs.src-plists-master.ref   = "refs/heads/master";
  inputs.src-plists-master.owner = "yglukhov";
  inputs.src-plists-master.repo  = "plists";
  inputs.src-plists-master.type  = "github";
  
  inputs."darwin".owner = "nim-nix-pkgs";
  inputs."darwin".ref   = "master";
  inputs."darwin".repo  = "darwin";
  inputs."darwin".dir   = "source";
  inputs."darwin".type  = "github";
  inputs."darwin".inputs.nixpkgs.follows = "nixpkgs";
  inputs."darwin".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-plists-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-plists-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}