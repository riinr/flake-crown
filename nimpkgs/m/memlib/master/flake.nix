{
  description = ''Memlib - Load Windows DLL from memory'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-memlib-master.flake = false;
  inputs.src-memlib-master.ref   = "refs/heads/master";
  inputs.src-memlib-master.owner = "khchen";
  inputs.src-memlib-master.repo  = "memlib";
  inputs.src-memlib-master.type  = "github";
  
  inputs."winim".owner = "nim-nix-pkgs";
  inputs."winim".ref   = "master";
  inputs."winim".repo  = "winim";
  inputs."winim".dir   = "3_8_1";
  inputs."winim".type  = "github";
  inputs."winim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."winim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."minhook".owner = "nim-nix-pkgs";
  inputs."minhook".ref   = "master";
  inputs."minhook".repo  = "minhook";
  inputs."minhook".dir   = "main";
  inputs."minhook".type  = "github";
  inputs."minhook".inputs.nixpkgs.follows = "nixpkgs";
  inputs."minhook".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-memlib-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-memlib-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}