{
  description = ''Fast and just works JSON-Binding for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sam-devel.flake = false;
  inputs.src-sam-devel.ref   = "refs/heads/devel";
  inputs.src-sam-devel.owner = "OpenSystemsLab";
  inputs.src-sam-devel.repo  = "sam.nim";
  inputs.src-sam-devel.type  = "github";
  
  inputs."jsmn".owner = "nim-nix-pkgs";
  inputs."jsmn".ref   = "master";
  inputs."jsmn".repo  = "jsmn";
  inputs."jsmn".dir   = "0_2";
  inputs."jsmn".type  = "github";
  inputs."jsmn".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsmn".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sam-devel"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-sam-devel";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}