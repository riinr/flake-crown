{
  description = ''a convention mainly created for `createThread` proc'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-packedArgs-main.flake = false;
  inputs.src-packedArgs-main.ref   = "refs/heads/main";
  inputs.src-packedArgs-main.owner = "hamidb80";
  inputs.src-packedArgs-main.repo  = "packedArgs";
  inputs.src-packedArgs-main.type  = "github";
  
  inputs."macroplus".owner = "nim-nix-pkgs";
  inputs."macroplus".ref   = "master";
  inputs."macroplus".repo  = "macroplus";
  inputs."macroplus".dir   = "0_2_0";
  inputs."macroplus".type  = "github";
  inputs."macroplus".inputs.nixpkgs.follows = "nixpkgs";
  inputs."macroplus".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-packedArgs-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-packedArgs-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}