{
  description = ''Simple web to share books, Calibre, Jester, Spectre CSS, No JavaScript, WebP & ZIP to reduce bandwidth'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-biblioteca_guarrilla-master.flake = false;
  inputs.src-biblioteca_guarrilla-master.ref   = "refs/heads/master";
  inputs.src-biblioteca_guarrilla-master.owner = "juancarlospaco";
  inputs.src-biblioteca_guarrilla-master.repo  = "biblioteca-guarrilla";
  inputs.src-biblioteca_guarrilla-master.type  = "github";
  
  inputs."jester".owner = "nim-nix-pkgs";
  inputs."jester".ref   = "master";
  inputs."jester".repo  = "jester";
  inputs."jester".dir   = "v0_5_0";
  inputs."jester".type  = "github";
  inputs."jester".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webp".owner = "nim-nix-pkgs";
  inputs."webp".ref   = "master";
  inputs."webp".repo  = "webp";
  inputs."webp".dir   = "master";
  inputs."webp".type  = "github";
  inputs."webp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zip".owner = "nim-nix-pkgs";
  inputs."zip".ref   = "master";
  inputs."zip".repo  = "zip";
  inputs."zip".dir   = "0_3_1";
  inputs."zip".type  = "github";
  inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-biblioteca_guarrilla-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-biblioteca_guarrilla-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}