{
  description = ''bundle your assets to a nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimassets-master.flake = false;
  inputs.src-nimassets-master.ref   = "refs/heads/master";
  inputs.src-nimassets-master.owner = "xmonader";
  inputs.src-nimassets-master.repo  = "nimassets";
  inputs.src-nimassets-master.type  = "github";
  
  inputs."zstd".owner = "nim-nix-pkgs";
  inputs."zstd".ref   = "master";
  inputs."zstd".repo  = "zstd";
  inputs."zstd".dir   = "v0_5";
  inputs."zstd".type  = "github";
  inputs."zstd".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zstd".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimassets-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nimassets-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}